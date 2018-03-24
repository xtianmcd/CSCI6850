This project folder contains the entirety of files needed to perform various geometric transforms on the included 3D {.img} file. 

The SOURCE CODE for applying the transforms can be found in the {./Source} directory within the main project directory. Within this directory exists a folder titled {./3DTransform}, which contains the actual source code and the associated {CMakeLists.txt} file. 

Additionally, the {./Source} directory contains within it a folder titled {./Input_Images}. This folder contains the {.img} and {.hdr} files used as input for the program. Thus, when executing the filter, the FILE PATH for the input .img file will be {'../../Source/Input_Images/jakob_rad_convention_stripped_with_cere.img'} for applying either of the filters. Furthermore, any 3D image can be read in to these files by indicating a valid file path to its location on the local machine. 

To RUN the code, first move into the {./Bin} directory within the main project folder, and next move into the {./3DTransform_build} folder. Within this build folder, run the executable file by entering ./3DTransform followed by nine additional arguments to specify the files and transforms (explicitly listed below).

The OUTPUT FILES are written to files titled {transformed_image} with appropriate {.img} and {.hdr} extensions. They are saved to the {./Output_Images} directory located within the {./Bin} directory of the main project folder. These images can be viewed by opening their {.hdr} files within an appropriate viewing software, such as MRIcro. 

The ARGUMENTS are as follows: 
    
    (1) input_filepath (e.g., ../../Source/Input_Images/jakob_rad_convention_stripped_with_cere.img)

    (2) output_filepath        (e.g., ../Output_Images/transformed_image.img)

    (3) x_rotation_theta       (e.g., 45)

    (4) y_rotation_theta       (e.g., 45) 

    (5) z_rotation_theta       (e.g., 45)

    (6) global_scaling_factor  (e.g., .5 or 5) 

    (7) x_translation_distance (e.g., 10 or -10)

    (8) y_translation_distance (e.g., 10 or -10)

    (9) z_translation_distance (e.g., 10 or -10)


As is evident from the arguments allowed, this program can perform rotation (about x, y, and/or z axes), global scaling, translation (in x, y and/or z direction) and similarity/affine transforms. The image is centered prior to rotation and interpolation is applied using the WindowedSincInterpolateImageFunction method provided in ITK. Each transform has its own matrix in the code for easy reading. This is code is highly inspired by examples and source code provided by the ITK library. 