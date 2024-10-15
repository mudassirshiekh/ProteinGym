#!/bin/bash 

source ../zero_shot_config.sh
source activate protein_fitness_prediction_hsu

export OMP_NUM_THREADS=1

export model_path="path to unirep weights checkpoint"
export output_dir="${clinical_output_score_folder_indels}/Unirep"
export DMS_index="variant index to run (e.g. 1,2,...2525)"

python ../../proteingym/baselines/unirep/unirep_inference.py \
            --model_path $model_path \
            --data_path $clinical_data_folder_indels \
            --output_dir $output_dir \
            --mapping_path $clinical_reference_file_path_indels \
            --DMS_index $DMS_index \
            --batch_size 32