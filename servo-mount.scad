union () {
  union () {
    difference () {
      union () {
        translate ([3.5, -19, 0]) {
          cube ([20, 2, 12], center=true);
        }
        translate ([-2.5, -21, -1.7]) {
          cube ([5, 2, 15.4], center=true);
        }
      }
      rotate (a=90.0, v=[1, 0, 0]) {
        translate ([8, 2.54, 0]) {
          cylinder ($fs=0.01, h=100, r=1.5, center=true);
        }
      }
    }
    difference () {
      translate ([0, -3, -7.4]) {
        cube ([46, 34, 4], center=true);
      }
      rotate (a=-13.846153846153845, v=[0, 1, 0]) {
        translate ([-40, -5, -1]) {
          cube ([100, 20, 4], center=true);
        }
      }
      rotate (a=13.846153846153845, v=[0, 1, 0]) {
        translate ([40, -5, -1]) {
          cube ([100, 20, 4], center=true);
        }
      }
      translate ([0, -5, -6]) {
        cube ([100, 20, 4], center=true);
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-23, 14, 0]) {
          cylinder ($fs=0.01, h=20, r=1.6, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([23, 14, 0]) {
          cylinder ($fs=0.01, h=20, r=1.6, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([23, -20, 0]) {
          cylinder ($fs=0.01, h=20, r=1.6, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-23, -20, 0]) {
          cylinder ($fs=0.01, h=20, r=1.6, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([0, -5, 0]) {
          cylinder ($fs=0.01, h=30, r=11, center=true);
        }
      }
    }
    difference () {
      translate ([18.8, 8.8, -1]) {
        cube ([7, 2, 13], center=true);
        translate ([4.5, -1, -0.9]) {
          cube ([2, 4, 15], center=true);
        }
      }
      rotate (a=90.0, v=[1, 0, 0]) {
        translate ([18.8, 2.54, 0]) {
          cylinder ($fs=0.01, h=40, r=2, center=true);
        }
      }
    }
    difference () {
      translate ([-18.8, 8.8, -1]) {
        cube ([7, 2, 13], center=true);
        translate ([-4.5, -1, -0.9]) {
          cube ([2, 4, 15], center=true);
        }
      }
      rotate (a=90.0, v=[1, 0, 0]) {
        translate ([-18.8, 2.54, 0]) {
          cylinder ($fs=0.01, h=40, r=2, center=true);
        }
      }
    }
  }
  union () {
    difference () {
      translate ([-36.5, 5, 8.75]) {
        cube ([10, 20, 1.5], center=true);
      }
      translate ([-30, 5, 7.75]) {
        rotate (a=30.508474576271187, v=[0, 1, 0]) {
          cube ([10, 25, 1.5], center=true);
        }
      }
      rotate (a=90.0, v=[1, 0, 0]) {
        translate ([-41.5, 9.9, 0]) {
          cylinder ($fs=0.01, h=50, r=3, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-41, 7, 2]) {
          cylinder ($fs=0.01, h=20, r=3, center=true);
        }
      }
    }
    difference () {
      union () {
        hull () {
          rotate (a=90.0, v=[1, 0, 0]) {
            translate ([6, 0, 26]) {
              cylinder ($fs=0.01, h=4, r=9.25, center=true);
            }
          }
          translate ([-28.5, -15, -1]) {
            cube ([5, 4, 6], center=true);
          }
        }
        hull () {
          rotate (a=90.0, v=[1, 0, 0]) {
            translate ([6, 0, -26]) {
              cylinder ($fs=0.01, h=4, r=9.25, center=true);
            }
          }
          translate ([-28.5, 15, -1]) {
            cube ([5, 4, 6], center=true);
          }
        }
        rotate (a=90.0, v=[1, 0, 0]) {
          translate ([-29, -6.4, 0]) {
            cylinder ($fs=0.01, h=32, r=3, center=true);
          }
        }
        translate ([-29, 0, -4.6]) {
          cube ([4, 36, 10], center=true);
        }
        translate ([-36, 5, 0]) {
          cube ([10, 22, 19], center=true);
        }
      }
      translate ([-35, -6, -12]) {
        cube ([20, 50, 10], center=true);
      }
      rotate (a=-17.647058823529413, v=[0, 1, 0]) {
        translate ([0, 0, 10]) {
          union () {
            translate ([-35, -6.2, -11]) {
              cube ([20, 26, 10], center=true);
            }
            translate ([-35, -6, -12]) {
              cube ([20, 50, 10], center=true);
            }
            translate ([-35, -6, -12]) {
              cube ([20, 25, 10], center=true);
            }
          }
        }
      }
      translate ([0, 0, -12.5]) {
        cube ([50, 58, 10], center=true);
      }
      rotate (a=59.99999999999999, v=[0, 1, 0]) {
        translate ([0, 0, -40]) {
          cube ([100, 58, 10], center=true);
        }
      }
      translate ([0, 0, 13]) {
        cube ([100, 58, 10], center=true);
      }
      translate ([14, 0, 0]) {
        cube ([30, 46, 20], center=true);
      }
      translate ([3, 0, 0]) {
        cube ([60, 30, 10], center=true);
      }
      translate ([-12, 0, -14]) {
        cube ([30, 46, 20], center=true);
      }
      translate ([-2, 0, 0]) {
        cube ([30, 36, 20], center=true);
      }
      translate ([8, 0, 0]) {
        cube ([30, 46, 20], center=true);
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-31, -28, 0]) {
          cylinder ($fs=0.01, h=20, r=1.6, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-31, -18, 0]) {
          cylinder ($fs=0.01, h=20, r=2, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-31, 18, 0]) {
          cylinder ($fs=0.01, h=20, r=2, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-13, -16, 0]) {
          cylinder ($fs=0.01, h=20, r=5, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-13, 16, 0]) {
          cylinder ($fs=0.01, h=20, r=5, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-7, -18, 0]) {
          cylinder ($fs=0.01, h=20, r=5, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-7, 18, 0]) {
          cylinder ($fs=0.01, h=20, r=5, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-41, 7, 2]) {
          cylinder ($fs=0.01, h=20, r=3, center=true);
        }
      }
      rotate (a=90.0, v=[1, 0, 0]) {
        translate ([-41.5, 9.9, 0]) {
          cylinder ($fs=0.01, h=50, r=3, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-41, 16, 2]) {
          cylinder ($fs=0.01, h=20, r=1.6, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-41, -6, 0]) {
          cylinder ($fs=0.01, h=20, r=1.6, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-38, 7, 0]) {
          cylinder ($fs=0.01, h=20, r=1.5, center=true);
        }
      }
      rotate (a=0.0, v=[1, 0, 0]) {
        translate ([-30.7, 7, 5.5]) {
          cylinder ($fs=0.01, h=20, r=1.5, center=true);
        }
      }
      translate ([-30, 5, 7.75]) {
        rotate (a=30.508474576271187, v=[0, 1, 0]) {
          cube ([10, 25, 1.5], center=true);
        }
      }
      rotate (a=90.0, v=[0, 1, 0]) {
        translate ([-4, 0, 0]) {
          cylinder ($fs=0.01, h=100, r=2.2, center=true);
        }
      }
      translate ([-36, 7, 6]) {
        cube ([11, 3, 20], center=true);
      }
      rotate (a=1890.7607239317167, v=[1, 0, 0]) {
        translate ([-35.6, 4, 0]) {
          cylinder ($fs=0.01, h=100, r=2.2, center=true);
        }
      }
      rotate (a=90.0, v=[1, 0, 0]) {
        translate ([8, 2.54, 0]) {
          cylinder ($fs=0.01, h=100, r=1.5, center=true);
        }
      }
    }
  }
  translate ([0, 0, 2.54]) {
    %union () {
      union () {
        rotate (a=90.0, v=[1, 0, 0]) {
          translate ([8, 0, 0]) {
            cylinder ($fs=0.01, h=100, r=1.5, center=true);
          }
        }
        difference () {
          translate ([0, 6.7, 0]) {
            cube ([42, 2, 10], center=true);
          }
          rotate (a=90.0, v=[1, 0, 0]) {
            translate ([19.5, 0, 0]) {
              cylinder ($fs=0.01, h=28, r=2.2, center=true);
            }
          }
          rotate (a=90.0, v=[1, 0, 0]) {
            translate ([-19.5, 0, 0]) {
              cylinder ($fs=0.01, h=28, r=2.2, center=true);
            }
          }
        }
        cube ([30, 28, 10.6], center=true);
      }
    }
  }
}
