object SubList {
  def isSubList[A](l1:List[A], l2:List[A]) = l2.containsSlice(l1)

   def main(args: Array[String]) {
        print(List(1, 2).forall(List(1, 2, 3, 4).contains))
      
    }
}

