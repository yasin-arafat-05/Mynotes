
facenet = FaceNet()
faces_embeddings = np.load("face_net_embedding.npz")
haarcascade = cv.CascadeClassifier("haarcascade_frontalface_default.xml")
model = pickle.load(open("svm_face_verification_model.pkl", 'rb'))

cap = cv.VideoCapture(0)
UNKNOWN_THRESHOLD = 0.93

while cap.isOpened():
    _, frame = cap.read()
    frame = cv.flip(frame,1)
    rgb_img = cv.cvtColor(frame, cv.COLOR_BGR2RGB)
    gray_img = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
    faces = haarcascade.detectMultiScale(gray_img, 1.3, 5)
    for x,y,w,h in faces:
        img = rgb_img[y:y+h, x:x+w]
        img = cv.resize(img, (160,160)) 
        img = np.expand_dims(img,axis=0)
        ypred = facenet.embeddings(img)
        
        # give confidence score or probability of each class
        proba = model.predict_proba(ypred)
        
        # find maximum_probabality_index,value,class_name
        max_proba_index = np.argmax(proba) 
        confidence = proba[0][max_proba_index]  
        face_name = model.classes_[max_proba_index] 
        
        print(f"{max_proba_index,confidence,face_name}")
        
        if confidence>UNKNOWN_THRESHOLD:
            final_name = labelEncoder.inverse_transform([face_name])
            cv.rectangle(frame, (x,y), (x+w,y+h), (255,0,255), 10)
            cv.putText(frame, str(final_name), (x,y-10), cv.FONT_HERSHEY_SIMPLEX,
                   1, (0,0,255), 3, cv.LINE_AA)
        else:
            cv.rectangle(frame, (x,y), (x+w,y+h), (255,0,255), 10)
            cv.putText(frame, "Unknown Person", (x,y-10), cv.FONT_HERSHEY_SIMPLEX,
                   1, (0,0,255), 3, cv.LINE_AA)
            
    
    cv.imshow("Face Recognition:", frame)
    if cv.waitKey(1) & 0xff == ord('q'):
        break

cap.release()
cv.destroyAllWindows()



