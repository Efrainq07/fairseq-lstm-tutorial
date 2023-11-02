fairseq-generate ./data-bin/iwslt14.tokenized.de-en \
  --user-dir ./ \
  --path ./checkpoints/checkpoint_best.pt \
  --beam 1 \
  --num-shards 1000\
  --shard-id 0 \
  --max-sentences 1 \
  --remove-bpe