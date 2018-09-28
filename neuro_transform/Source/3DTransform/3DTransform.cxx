
// EXECUTABLE:  argv[0]: ./3DTransform
// INPUT:       argv[1]: {../../Source/Input_Images/jakob_rad_convention_stripped_with_cere.img}
// ARGUMENTS:   argv[2]: output_filepath (e.g., ../Output_Images/transformed_image.img)
//              argv[3]: x_rotation_theta       (e.g., 45)
//              argv[4]: y_rotation_theta       (e.g., 45)
//              argv[5]: z_rotation_theta       (e.g., 45)
//              argv[6]: global_scaling_factor  (e.g., .5 or 5)
//              argv[7]: x_translation_distance (e.g., 10 or -10)
//              argv[8]: y_translation_distance (e.g., 10 or -10)
//              argv[9]: z_translation_distance (e.g., 10 or -10)
//
// OUTPUT:      {../Output_Images/threshold_image.img}
//

// AUTHOR: Christian McDaniel
//
// This source code was modified from and makes use of the ITK Modules
// {itkAffineTransform.cxx} and {itkResampleImageFilter.cxx}. It illustrates the performance of various
// geometric transformations to a 3D input image. The transforms made
// possible include rotation along x, y and/or z axes, global scaling,
// translation in the x, y and/or z directions, and any combination of
// these.

#include "itkImageFileReader.h"
#include "itkImageFileWriter.h"
#include "itkAffineTransform.h"
#include "itkResampleImageFilter.h"
#include "itkWindowedSincInterpolateImageFunction.h"

// ensure correct number of arguments are entered.
int main( int argc, char* argv[] )
{
  if( argc != 10 )
    {
    std::cerr << "Usage: "<< std::endl;
    std::cerr << argv[0];
    std::cerr << " <InputFileName> <OutputFileName> <xRotationTheta> <yRotationTheta> <zRotationTheta> <scalingFactor> <xTranslation> <yTranslation> <zTranslation>";
    std::cerr << std::endl;
    return EXIT_FAILURE;
    }

  // Define image dimensions
  constexpr unsigned int Dimension = 3;
  using ScalarType = double;

  const char * inputFileName = argv[1];
  const char * outputFileName = argv[2];

  // Construct xRotationMatrix
  using MatrixType = itk::Matrix< ScalarType, Dimension + 1, Dimension + 1 >;
  MatrixType xRotationMatrix;

  xRotationMatrix[0][0] = 1.;
  xRotationMatrix[0][1] = 0.;
  xRotationMatrix[0][2] = 0.;
  xRotationMatrix[0][3] = 1.;

  xRotationMatrix[1][0] = 0.;
  xRotationMatrix[1][1] = std::cos( atof(argv[3]) );
  xRotationMatrix[1][2] = std::sin( atof(argv[3]) );
  xRotationMatrix[1][3] = 1.;

  xRotationMatrix[2][0] = 0.;
  xRotationMatrix[2][1] = - xRotationMatrix[1][2];
  xRotationMatrix[2][2] = std::cos( atof(argv[3]) );
  xRotationMatrix[2][3] = 1.;

  xRotationMatrix[3][0] = 0.;
  xRotationMatrix[3][1] = 0.;
  xRotationMatrix[3][2] = 0.;
  xRotationMatrix[3][3] = 1.;


  // Construct yRotationMatrix
  using MatrixType = itk::Matrix< ScalarType, Dimension + 1, Dimension + 1 >;
  MatrixType yRotationMatrix;

  yRotationMatrix[0][0] = std::cos( atof(argv[4]) );
  yRotationMatrix[0][1] = 0.;
  yRotationMatrix[0][2] = std::sin( atof(argv[4]) );
  yRotationMatrix[0][3] = 1.;

  yRotationMatrix[1][0] = 0.;
  yRotationMatrix[1][1] = 1.;
  yRotationMatrix[1][2] = 0.;
  yRotationMatrix[1][3] = 1.;

  yRotationMatrix[2][0] = - yRotationMatrix[0][2];
  yRotationMatrix[2][1] = 0.;
  yRotationMatrix[2][2] = yRotationMatrix[0][0];
  yRotationMatrix[2][3] = 1.;

  yRotationMatrix[3][0] = 0.;
  yRotationMatrix[3][1] = 0.;
  yRotationMatrix[3][2] = 0.;
  yRotationMatrix[3][3] = 1.;


  // Construct zRotationMatrix
  using MatrixType = itk::Matrix< ScalarType, Dimension + 1, Dimension + 1 >;
  MatrixType zRotationMatrix;

  zRotationMatrix[0][0] = std::cos( atof(argv[5]) );
  zRotationMatrix[0][1] = - std::sin( atof(argv[5]) );
  zRotationMatrix[0][2] = 0.;
  zRotationMatrix[0][3] = 1.;

  zRotationMatrix[1][0] = - zRotationMatrix[0][1];
  zRotationMatrix[1][1] = zRotationMatrix[0][0];
  zRotationMatrix[1][2] = 0.;
  zRotationMatrix[1][3] = 1.;

  zRotationMatrix[2][0] = 0.;
  zRotationMatrix[2][1] = 0.;
  zRotationMatrix[2][2] = 1.;
  zRotationMatrix[2][3] = 1.;

  zRotationMatrix[3][0] = 0.;
  zRotationMatrix[3][1] = 0.;
  zRotationMatrix[3][2] = 0.;
  zRotationMatrix[3][3] = 1.;


  // Construct scalingMatrix
  using MatrixType = itk::Matrix< ScalarType, Dimension + 1, Dimension + 1 >;
  MatrixType scalingMatrix;

  scalingMatrix[0][0] = atof(argv[6]);
  scalingMatrix[0][1] = 0.;
  scalingMatrix[0][2] = 0.;
  scalingMatrix[0][3] = 1.;

  scalingMatrix[1][0] = 0.;
  scalingMatrix[1][1] = atof(argv[6]);
  scalingMatrix[1][2] = 0.;
  scalingMatrix[1][3] = 1.;

  scalingMatrix[2][0] = 0.;
  scalingMatrix[2][1] = 0.;
  scalingMatrix[2][2] = atof(argv[6]);
  scalingMatrix[2][3] = 1.;

  scalingMatrix[3][0] = 0.;
  scalingMatrix[3][1] = 0.;
  scalingMatrix[3][2] = 0.;
  scalingMatrix[3][3] = 1.;


  // Construct translationMatrix
  using MatrixType = itk::Matrix< ScalarType, Dimension + 1, Dimension + 1 >;
  MatrixType translationMatrix;

  translationMatrix[0][0] = 1.;
  translationMatrix[0][1] = 0.;
  translationMatrix[0][2] = 0.;
  translationMatrix[0][3] = atof(argv[7]);

  translationMatrix[1][0] = 0.;
  translationMatrix[1][1] = 1.;
  translationMatrix[1][2] = 0.;
  translationMatrix[1][3] = atof(argv[8]);

  translationMatrix[2][0] = 0.;
  translationMatrix[2][1] = 0.;
  translationMatrix[2][2] = 1.;
  translationMatrix[2][3] = atof(argv[9]);

  translationMatrix[3][0] = 0.;
  translationMatrix[3][1] = 0.;
  translationMatrix[3][2] = 0.;
  translationMatrix[3][3] = 1.;

  // Read in the input image
  using PixelType = unsigned char;
  using ImageType = itk::Image< PixelType, Dimension >;

  using ReaderType = itk::ImageFileReader< ImageType >;
  ReaderType::Pointer reader = ReaderType::New();
  reader->SetFileName( inputFileName );
  reader->Update();

  ImageType::ConstPointer input = reader->GetOutput();

  typedef ImageType::SpacingType    SpacingType;
  typedef ImageType::PointType      OriginType;
  typedef ImageType::RegionType     RegionType;
  typedef ImageType::SizeType       SizeType;

  //  This method was modified from the ITK Example File {ImageRegistration5.cxx}
  //  Software Guide : BeginLatex
  //
  //  The center of rotation is computed using the origin, size and spacing of
  //  the fixed image.
  //
  //  Software Guide : EndLatex

  // Software Guide : BeginCodeSnippet

  const SpacingType spacing = input->GetSpacing();
  const OriginType  origin  = input->GetOrigin();
  const ImageType::SizeType& size = input->GetLargestPossibleRegion().GetSize();

  using TransformType = itk::AffineTransform< ScalarType, Dimension >;
  TransformType::InputPointType center;

  center[0] = origin[0] + spacing[0] * size[0] / 2.0;
  center[1] = origin[1] + spacing[1] * size[1] / 2.0;


  // Initialize the transform
  using ResampleImageFilterType = itk::ResampleImageFilter< ImageType, ImageType >;
  ResampleImageFilterType::Pointer resample = ResampleImageFilterType::New();
  resample->SetInput( input );
  resample->SetReferenceImage( input );
  resample->UseReferenceImageOn();
  resample->SetSize( size );
  resample->SetDefaultPixelValue( 0 );

  // Initialize the interpolator
  constexpr unsigned int Radius = 3;
  using InterpolatorType = itk::WindowedSincInterpolateImageFunction< ImageType, Radius >;
  InterpolatorType::Pointer interpolator = InterpolatorType::New();

  resample->SetInterpolator( interpolator );

  // Perform rotation along x-axis, if nonzero angle was given as a parameter.
  if (atof(argv[3]) != 0) {
    using TransformType = itk::AffineTransform< ScalarType, Dimension >;
    TransformType::Pointer xRotationTransform = TransformType::New();

    // center the image
    xRotationTransform->SetCenter( center );

    // get transform parameters from MatrixType
    TransformType::ParametersType xRotationParameters( Dimension * Dimension + Dimension );
    for( unsigned int i = 0; i < Dimension; i++ )
      {
      for( unsigned int j = 0; j < Dimension; j++ )
        {
        xRotationParameters[ i * Dimension + j ] = xRotationMatrix[ i ][ j ];
        }
      }
    for( unsigned int i = 0; i < Dimension; i++ )
      {
      xRotationParameters[ i + Dimension * Dimension ] = xRotationMatrix[ i ][ Dimension ];
      }
    xRotationTransform->SetParameters( xRotationParameters );

    resample->SetTransform( xRotationTransform );
  }

  // Perform rotation along y-axis, if nonzero angle was given as a parameter.
  if (atof(argv[4]) != 0) {
    using TransformType = itk::AffineTransform< ScalarType, Dimension >;
    TransformType::Pointer yRotationTransform = TransformType::New();

    // center the image
    yRotationTransform->SetCenter( center );

    // get transform parameters from MatrixType
    TransformType::ParametersType yRotationParameters( Dimension * Dimension + Dimension );
    for( unsigned int i = 0; i < Dimension; i++ )
      {
      for( unsigned int j = 0; j < Dimension; j++ )
        {
        yRotationParameters[ i * Dimension + j ] = yRotationMatrix[ i ][ j ];
        }
      }
    for( unsigned int i = 0; i < Dimension; i++ )
      {
      yRotationParameters[ i + Dimension * Dimension ] = yRotationMatrix[ i ][ Dimension ];
      }
    yRotationTransform->SetParameters( yRotationParameters );

    resample->SetTransform( yRotationTransform );
  }

  // Perform rotation along z-axis, if nonzero angle was given as a parameter.
  if (atof(argv[5]) != 0) {
    using TransformType = itk::AffineTransform< ScalarType, Dimension >;
    TransformType::Pointer zRotationTransform = TransformType::New();

    // center the image
    zRotationTransform->SetCenter( center );

    // get transform parameters from MatrixType
    TransformType::ParametersType zRotationParameters( Dimension * Dimension + Dimension );
    for( unsigned int i = 0; i < Dimension; i++ )
      {
      for( unsigned int j = 0; j < Dimension; j++ )
        {
        zRotationParameters[ i * Dimension + j ] = zRotationMatrix[ i ][ j ];
        }
      }
    for( unsigned int i = 0; i < Dimension; i++ )
      {
      zRotationParameters[ i + Dimension * Dimension ] = zRotationMatrix[ i ][ Dimension ];
      }
    zRotationTransform->SetParameters( zRotationParameters );

    resample->SetTransform( zRotationTransform );
  }

  // Perform glabal scaling, if scaling factor was given as a parameter.
  if (atof(argv[6]) != 1) {
    using TransformType = itk::AffineTransform< ScalarType, Dimension >;
    TransformType::Pointer scalingTransform = TransformType::New();

    // center the image
    scalingTransform->SetCenter( center );

    // get transform parameters from MatrixType
    TransformType::ParametersType scalingParameters( Dimension * Dimension + Dimension );
    for( unsigned int i = 0; i < Dimension; i++ )
      {
      for( unsigned int j = 0; j < Dimension; j++ )
        {
        scalingParameters[ i * Dimension + j ] = scalingMatrix[ i ][ j ];
        }
      }
    for( unsigned int i = 0; i < Dimension; i++ )
      {
      scalingParameters[ i + Dimension * Dimension ] = scalingMatrix[ i ][ Dimension ];
      }
    scalingTransform->SetParameters( scalingParameters );

    resample->SetTransform( scalingTransform );
  }

  // Perform translation, if nonzero distance was given as a parameter.
  if (((atof(argv[7]) != 0) || (atof(argv[8]) != 0)) || (atof(argv[9]) != 0)) {
    using TransformType = itk::AffineTransform< ScalarType, Dimension >;
    TransformType::Pointer translationTransform = TransformType::New();

    // center the image
    translationTransform->SetCenter( center );

    // get transform parameters from MatrixType
    TransformType::ParametersType translationParameters( Dimension * Dimension + Dimension );
    for( unsigned int i = 0; i < Dimension; i++ )
      {
      for( unsigned int j = 0; j < Dimension; j++ )
        {
        translationParameters[ i * Dimension + j ] = translationMatrix[ i ][ j ];
        }
      }
    for( unsigned int i = 0; i < Dimension; i++ )
      {
      translationParameters[ i + Dimension * Dimension ] = translationMatrix[ i ][ Dimension ];
      }
    translationTransform->SetParameters( translationParameters );

    resample->SetTransform( translationTransform );
  }

  // write file to output destination
  using WriterType = itk::ImageFileWriter< ImageType >;
  WriterType::Pointer writer = WriterType::New();
  writer->SetFileName( outputFileName );
  writer->SetInput( resample->GetOutput() );
  try
    {
    writer->Update();
    }
  catch( itk::ExceptionObject & error )
    {
    std::cerr << "Error: " << error << std::endl;
    return EXIT_FAILURE;
    }

  return EXIT_SUCCESS;
}
