pip install -r requirements.txt

pip install torch torchvision torchaudio --force-reinstall  --index-url “https://download.pytorch.org/whl/cu121”

wget --header="Authorization: Bearer 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" --content-disposition "https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors?download=true"

# Move the downloaded file to the models/unet folder
mv flux1-dev.safetensors models/unet/

wget --content-disposition "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors?download=true"

wget --content-disposition "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors?download=true"

# Move the downloaded file to the models/clip folder
mv t5xxl_fp16.safetensors models/clip/
mv clip_l.safetensors models/clip/

wget --content-disposition "https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors?download=true"

mv ae.safetensors models/vae/
