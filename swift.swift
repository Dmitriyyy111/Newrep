self.OnceAgainImage4.frame.origin.y = self.OnceAgainImage4.frame.origin.y  + translation.y
                self.Address.frame.origin.y = self.Address.frame.origin.y  + translation.y
                self.Choose1.frame.origin.y = self.Choose1.frame.origin.y  + translation.y
                self.Choose2.frame.origin.y = self.Choose2.frame.origin.y  + translation.y
                self.Choose3.frame.origin.y = self.Choose3.frame.origin.y  + translation.y
                self.Choose4.frame.origin.y = self.Choose4.frame.origin.y  + translation.y
                self.Choose5.frame.origin.y = self.Choose5.frame.origin.y  + translation.y
                self.swipeAreaView.frame.origin.y = self.swipeAreaView.frame.origin.y  + translation.y
                self.collectionView1.frame.origin.y = self.collectionView1.frame.origin.y  + translation.y
            })
                
                // Сброс трансляции жеста
                gesture.setTranslation(CGPoint.zero, in: view)
                
                // Проверка, достиг ли UICollectionView верхней части экрана
                if collectionView2.frame.minY <= topLimit {
                    // Включение прокрутки UICollectionView
                    collectionView2.isScrollEnabled = true
                }
