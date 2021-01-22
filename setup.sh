#git cms-init
#git clone -b 102_18 https://github.com/VBF-HZZ/UFHZZAnalysisRun2.git

git cms-addpkg GeneratorInterface/RivetInterface
git cms-addpkg SimDataFormats/HTXS
git cms-addpkg RecoEgamma/EgammaTools
git cms-addpkg RecoEgamma/PhotonIdentification
git cms-addpkg RecoEgamma/ElectronIdentification
git cms-merge-topic cms-egamma:EgammaPostRecoTools
git cms-addpkg PhysicsTools/PatAlgos/
#(vi .git/info/sparse-checkout & git read-tree -mu HEAD)
git clone https://github.com/cms-analysis/HiggsAnalysis-ZZMatrixElement.git ZZMatrixElement
cd ZZMatrixElement
git checkout -b from-v223 v2.2.3
. setup.sh -j 12
cd ../
git clone -b RunII_v2 https://github.com/VBF-HZZ/UFHZZAnalysisRun2-Accessary.git
mv UFHZZAnalysisRun2-Accessary/* ./
mv UFHZZAnalysisRun2-Accessary/RecoEgamma/ElectronIdentification/python/Identification/mvaElectronID_Autumn18_ID_ISO_cff.py ./RecoEgamma/ElectronIdentification/python/Identification/
mv UFHZZAnalysisRun2-Accessary/RecoEgamma/ElectronIdentification/python/Identification/mvaElectronID_Summer16_ID_ISO_cff.py ./RecoEgamma/ElectronIdentification/python/Identification/
mv UFHZZAnalysisRun2-Accessary/RecoEgamma/ElectronIdentification/python/ElectronMVAValueMapProducer_cfi.py RecoEgamma/ElectronIdentification/python/
mv UFHZZAnalysisRun2-Accessary/RecoEgamma/ElectronIdentification/python/ElectronIDValueMapProducer_cfi.py RecoEgamma/ElectronIdentification/python/
mv UFHZZAnalysisRun2-Accessary/RecoEgamma/ElectronIdentification/data/MVAWeightFiles RecoEgamma/ElectronIdentification/data/
mv UFHZZAnalysisRun2-Accessary ../
git clone https://github.com/VBF-HZZ/KinZfitter.git
scram b -j 8
