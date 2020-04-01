pip install -r requirements.txt
conda install \
tensorflow-gpu==1.12 \
cudatoolkit==9.0 \
cudnn=7.1.2 \
h5py

cwd=$PWD
cd tf_pose/pafprocess
swig -python -c++ pafprocess.i && python setup.py build_ext --inplace
cd $cwd

# download model
cwd=$PWD
cd models/graph/cmu
bash download.sh
cd $cwd