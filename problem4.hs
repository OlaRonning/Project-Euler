largestPalindrom =
  maximum [x | y<-[500..999], z<-[y..999], let x=y*z, let s=show x, s==reverse s]
