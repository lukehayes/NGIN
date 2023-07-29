package event;

interface Observable {
  public function notified(sender:Observer, ?data:Any) : Void;
}
