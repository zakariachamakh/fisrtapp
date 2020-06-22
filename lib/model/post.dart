class Post {
  String id, title, content, featured_image, date_wirtten;
  int votes_up, votes_down, user_id, category_id;
  List<int> voters_up, voters_down;

  Post(
      {this.id,
      this.title,
      this.content,
      this.featured_image,
      this.date_wirtten,
      this.votes_up,
      this.votes_down,
      this.user_id,
      this.category_id,
      this.voters_up,
      this.voters_down});
}
