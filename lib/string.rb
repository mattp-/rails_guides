class String
  @@slash = "/"
  def actionize!
    self.insert(0, @@slash)
  end
  
  def slashize
    self + @@slash
  end
end
