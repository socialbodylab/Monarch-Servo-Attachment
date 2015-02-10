(ns servo-mount.core
  (:gen-class)
  (:require [scad-clj.scad :refer :all]
            [scad-clj.model :exclude [import use] :refer :all]))

(defn hole
  "Reusable punch-through cylinder."
  [r h trans rad axis]
  (->> (cylinder r h)
       (with-fs 0.01)
       (translate trans)
       (rotate rad axis)))

(defn rotation-shaft
  "Axis of bracket rotation, alings with servo head"
  []
  (hole
    1.5 100
    [8 2.54 0]
    (/ pi 2) [1 0 0]))

(defn shadow
  "This is the servo imprint, not meant to be printed."
  []
  (let [body (cube 30 28 10.6)
        wings (->> (cube 42 2 10)
                   (translate [0 6.7 0]))]
    (->> (union
           (hole
             1.5 100
             [8 0 0]
             (/ pi 2) [1 0 0])
           (difference
             wings
             (hole
               2.2 28
               [19.5 0 0]
               (/ pi 2) [1 0 0])
             (hole
               2.2 28
               [-19.5 0 0]
               (/ pi 2) [1 0 0]))
           body)
         (-%)                                               ;; Marks model to be rendered semi-transparently. & Ignore From STL
         )))

(defn bracket
  "The moving arm"
  []
  (union
    (difference
      (->> (cube 10 20 1.5)
         (translate [-36.5 5 8.75]))
      (->> (cube 10 25 1.5)
           (rotate (/ pi 5.9) [0 1 0])
           (translate [-30 5 7.75]))
      (->> (hole 3 50
                 [-41.5 9.9 0]
                 (/ pi 2) [1 0 0]))
      (hole 3 20
            [-41 7 2]
            0 [1 0 0]))
    (difference
      (union
        (hull
          (hole
            9.25 4
            [6 0 26]
            (/ pi 2) [1 0 0])
          (->> (cube 5 4 6)
               (translate [-28.5 -15 -1])))
        (hull
          (hole
            9.25 4
            [6 0 -26]
            (/ pi 2) [1 0 0])
          (->> (cube 5 4 6)
               (translate [-28.5 15 -1])))
        (hole
          3 32
          [-29 -6.4 0]
          (/ pi 2) [1 0 0])
        (->> (cube 4 36 10)
             (translate [-29 0 -4.6]))
        (->> (cube 10 22 19)
             (translate [-36 5 0])))
      (->> (cube 20 50 10)
           (translate [-35 -6 -12]))
      (->> (union
              (->> (cube 20 26 10)
                   (translate [-35 -6.2 -11]))
              (->> (cube 20 50 10)
                   (translate [-35 -6 -12]))
              (->> (cube 20 25 10)
                   (translate [-35 -6 -12])))
           (translate [0 0 10])
           (rotate (/ pi -10.2) [0 1 0]))
      (->> (cube 50 58 10)
           (translate [0 0 -12.5]))
      (->> (cube 100 58 10)
           (translate [0 0 -40])
           (rotate (/ pi 3) [0 1 0]))
      (->> (cube 100 58 10)
           (translate [0 0 13]))
      (->> (cube 30 46 20)
           (translate [14 0 0]))
      (->> (cube 60 30 10)
           (translate [3 0 0]))
      (->> (cube 30 46 20)
           (translate [-12 0 -14]))
      (->> (cube 30 36 20)
           (translate [-2 0 0]))
      (->> (cube 30 46 20)
           (translate [8 0 0]))
      (hole 1.6 20
            [-31 -28 0]
            0 [1 0 0])
      (hole 2 20
            [-31 -18 0]
            0 [1 0 0])
      (hole 2 20
            [-31 18 0]
            0 [1 0 0])
      (hole 5 20
            [-13 -16 0]
            0 [1 0 0])
      (hole 5 20
            [-13 16 0]
            0 [1 0 0])
      (hole 5 20
            [-7 -18 0]
            0 [1 0 0])
      (hole 5 20
            [-7 18 0]
            0 [1 0 0])
      (hole 3 20
            [-41 7 2]
            0 [1 0 0])
      (->> (hole 3 50
            [-41.5 9.9 0]
            (/ pi 2) [1 0 0]))
      (hole 1.6 20
            [-41 16 2]
            0 [1 0 0])
      (hole 1.6 20
            [-41 -6 0]
            0 [1 0 0])
      (hole 1.5 20
            [-38 7 0]
            0 [1 0 0])
      (hole 1.5 20
            [-30.7 7 5.5]
            0 [1 0 0])
      (->> (cube 10 25 1.5)
           (rotate (/ pi 5.9) [0 1 0])
           (translate [-30 5 7.75]))
      (hole
        2.2 100
        [-4 0 0]
        (/ pi 2) [0 1 0])
      (->> (cube 11 3 20)
           (translate [-36 7 6]))
      (hole
        2.2 100
        [-35.6 4 0]
        33 [1 0 0])
      (rotation-shaft))))

(defn mount
  "What the 'wings' of the servo attach to."
  [position]
  (let [offset (case position
                 :l 18.8
                 :r -18.8)]

    (difference
      (translate [offset 8.8 -1] (cube 7 2 13)
                 (translate [(if (neg? offset)
                               -4.5
                               +4.5) -1 -0.9] (cube 2 4 15)))
      (hole
        2 40
        [offset 2.54 0]
        (/ pi 2) [1 0 0]))))

(defn base
  "The servo is mounted to the base, and the base is mounted
   to the material."
  []
  (let [floor
        (difference
          (->> (cube 46 34 4)
               (translate [0 -3 -7.4]))
          #_(->> (cube 20 9 1.4)
               (translate [-6 -3 -6])
               (rotate (/ (* 3 pi) 3.9) [0 0 1]))
          (->> (cube 100 20 4)
               (translate [-40 -5 -1])
               (rotate (/ pi -13) [0 1 0]))
          (->> (cube 100 20 4)
               (translate [40 -5 -1])
               (rotate (/ pi 13) [0 1 0]))
          (->> (cube 100 20 4)
               (translate [0 -5 -6]))
          (hole 1.6 20
                [-23 14 0]
                0 [1 0 0])
          (hole 1.6 20
                [23 14 0]
                0 [1 0 0])
          (hole 1.6 20
                [23 -20 0]
                0 [1 0 0])
          (hole 1.6 20
                [-23 -20 0]
                0 [1 0 0])
          #_(hole 5 20
                [14 -8 0]
                0 [1 0 0])
          #_(hole 5 20
                [-14 -8 0]
                0 [1 0 0])
          (hole 11 30
                [0 -5 0]
                0 [1 0 0]))
        back
        (difference
          (union
            (->> (cube 20 2 12)
                 (translate [3.5 -19 0]))
            (->> (cube 5 2 15.4)
                 (translate [-2.5 -21 -1.7])))              ;; 5.5
          (rotation-shaft))]
    (union
      back
      floor
      (mount :l)
      (mount :r))))

(defn e []
  (let [just-bracket (bracket)
        whole-rig (union
                    (base)
                    just-bracket
                    (translate [0 0 2.54]
                               (shadow)))]
    (spit "servo-mount.scad"
          (write-scad whole-rig))
    (spit "servo-bracket.scad"
          (write-scad just-bracket))
    (println "Exported")))

(defn -main
  [& args]
  (println args)
  (e))
