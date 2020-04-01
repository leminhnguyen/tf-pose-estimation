pip install -r requirements.txt
pip install tensorflow==1.14

cwd=$PWD
cd tf_pose/pafprocess
swig -python -c++ pafprocess.i && python setup.py build_ext --inplace
cd $cwd

# download model
cwd=$PWD
cd models/graph/cmu
bash download.sh
cd $cwd