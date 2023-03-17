rm ~/.docker/config.json
docker-compose up --build

cd $proj_root/cli
pip install -e "."

cd $proj_root

python scripts/ai2-internal/fetch_pdfs.py skiff_files/apps/pawls/papers 34f25a8704614163c4095b3ee2fc969b60de4698 3febb2bed8865945e7fddc99efd791887bb7e14f 553c58a05e25f794d24e8db8c2b8fdb9603e6a2

pawls add downloads/rfps
pawls preprocess pymupdf skiff_files/apps/pawls/papers
pawls assign skiff_files/apps/pawls/papers development_user@example.com --all

rm -rf skiff_files/apps/pawls/papers/*
