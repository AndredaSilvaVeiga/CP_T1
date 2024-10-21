#!/bin/bash
#
#SBATCH --partition cpar  # partition (queue)
#SBATCH --exclusive       # exclusive allocation
#SBATCH --time=01:00      # allocation for 1 minute
module load gcc/11.2.0
make
srun --partition cpar perf stat -e cycles ./fluid_sim