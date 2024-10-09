
# Train
python main.py ReaRev --entity_dim 50 --num_epoch 200 --batch_size 8 --load_experiment ReaRev_webqsp.ckpt \
                      --data_folder data/webqsp/ --lm sbert --num_iter 3 --num_ins 2 \
                      --num_gnn 3 --relation_word_emb True --name webqsp


# Eval
python main.py ReaRev --entity_dim 50 --num_epoch 200 --batch_size 8 --load_experiment ReaRev_webqsp.ckpt  \
                      --data_folder data/webqsp/ --lm sbert --num_iter 3 --num_ins 2 \
                      --num_gnn 3 --relation_word_emb True --name webqsp
                       --is_eval --eval_every 2 

# Using the trained retrieer
GNN-RAG/llm/src/qa_prediction/predict_answer.py