@objc func handlePanGesture(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)
        let velocity = gesture.velocity(in: view)
        
        if UpLabel.frame.minY > -115{
            
            UIView.animate(withDuration: 0.4, animations: {
                self.collectionView2.frame = CGRect(x: self.collectionView2.frame.origin.x,
                                                    y: cV2,
                                                    width: self.collectionView2.frame.size.width,
                                                    height: cV2H)
                
                self.OnceAgainLabel.frame.origin.y = OAL
                self.OnceAgainText.frame.origin.y = OAT
                
                self.UpLabel.frame.origin.y = UL
                
                self.SearchLabel.frame.origin.y = SL
                self.SearchFood1.frame.origin.y = SF1
                self.Loop.frame.origin.y = LP
                self.OnceAgainImage1.frame.origin.y = OAI1
                self.OnceAgainImage2.frame.origin.y = OAI2
                self.OnceAgainImage3.frame.origin.y = OAI3
                self.OnceAgainImage4.frame.origin.y = OAI4
                self.Address.frame.origin.y = Add
                self.Choose1.frame.origin.y = ch1
                self.Choose2.frame.origin.y = ch2
                self.Choose3.frame.origin.y = ch3
                self.Choose4.frame.origin.y = ch4
                self.Choose5.frame.origin.y = ch5
                self.swipeAreaView.frame.origin.y = SAV
                self.collectionView1.frame.origin.y = cV1
                self.ListButton1.frame.origin.y = LB
                self.PosisitonButton1.frame.origin.y = PB
                
            })
                
                // Сброс трансляции жеста
                gesture.setTranslation(CGPoint.zero, in: view)
                
                // Проверка, достиг ли UICollectionView верхней части экрана
                if collectionView2.frame.minY <= topLimit {
                    // Включение прокрутки UICollectionView
                    collectionView2.isScrollEnabled = true
                    print("Ok")
                }
            
        }
        else
        // Проверка направления свайпа и положения UICollectionView
        if (velocity.y < 0 || velocity.y > 0) && collectionView2.frame.minY > topLimit{
                // Перемещение UICollectionView вверх
            
            UIView.animate(withDuration: 0.1, animations: {
                self.collectionView2.frame = CGRect(x: self.collectionView2.frame.origin.x,
                                                    y: self.collectionView2.frame.origin.y + translation.y,
                                                    width: self.collectionView2.frame.size.width,
                                                    height: self.collectionView2.frame.size.height - translation.y)
                self.PosisitonButton1.frame.origin.y = self.PosisitonButton1.frame.origin.y + translation.y
                self.ListButton1.frame.origin.y = self.ListButton1.frame.origin.y + translation.y
                self.OnceAgainLabel.frame.origin.y = self.OnceAgainLabel.frame.origin.y + translation.y
                self.OnceAgainText.frame.origin.y = self.OnceAgainText.frame.origin.y + translation.y
                
                self.UpLabel.frame.origin.y = self.UpLabel.frame.origin.y  + translation.y
                
                self.SearchLabel.frame.origin.y = self.SearchLabel.frame.origin.y  + translation.y
                self.SearchFood1.frame.origin.y = self.SearchFood1.frame.origin.y  + translation.y
                self.Loop.frame.origin.y = self.Loop.frame.origin.y  + translation.y
                self.OnceAgainImage1.frame.origin.y = self.OnceAgainImage1.frame.origin.y  + translation.y
                self.OnceAgainImage2.frame.origin.y = self.OnceAgainImage2.frame.origin.y  + translation.y
                self.OnceAgainImage3.frame.origin.y = self.OnceAgainImage3.frame.origin.y  + translation.y
