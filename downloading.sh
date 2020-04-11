sudo apt-get install libllvm-7-ocaml-dev libllvm7 llvm-7 llvm-7-dev llvm-7-doc llvm-7-examples llvm-7-runtime
export LLVM_CONFIG=/usr/bin/llvm-config-7 

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