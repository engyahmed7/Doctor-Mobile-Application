class Doctor {
  String id;
  String name;
  String speciality;
  String address;
  String rating;
  String shortDescription;
  String images;
  String Location;

  Doctor(this.id, this.name, this.speciality, this.rating, this.address,
      this.shortDescription, this.images, this.Location);
}

List<Doctor> doctors = [
  Doctor(
      '1',
      'Dudung Sokmati',
      'Eyes speciality',
      "4.5",
      'St.Bronxlyn',
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
      'images/1.jpg',
      ""),
  Doctor(
      '2',
      'Alison Baillargeon',
      'Endocrinologists',
      "3.0",
      'St.Bronxlyn',
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'images/8.webp',
      "loc1.webp"),
  Doctor(
      '3',
      'James Belarmino',
      'Gastroenterologists',
      "5",
      'St.Bronxlyn',
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'images/3.jpg',
      "images/3.jpg"),
  Doctor(
      '4',
      'Christopher Bloss',
      'Obstetrician',
      "5",
      'St.Bronxlyn',
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'images/4.webp',
      "images/3.jpg"),
  Doctor(
      '5',
      'Carol Braungart',
      'Pulmonologists',
      "5",
      'St.Bronxlyn',
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'images/5.webp',
      "images/3.jpg"),
  Doctor(
      '6',
      'Alexandra Burke',
      'Otolaryngologists',
      "3.5",
      'St.Bronxlyn',
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'images/6.webp',
      "images/3.jpg"),
  Doctor(
      '7',
      'Veronica Ciesz',
      'Rheumatologists',
      " 4.0",
      'St.Bronxlyn',
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'images/2.webp',
      "images/3.jpg"),
  Doctor(
      '8',
      'Steffani Cotugno',
      'General surgeons',
      " 2.0",
      'St.Bronxlyn',
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'images/7.webp',
      "images/3.jpg")
];
