cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  enthesopathies-&-synovial-disorders-bursitis---primary:
    run: enthesopathies-&-synovial-disorders-bursitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  enthesopathies-&-synovial-disorders-tenosynovitis---primary:
    run: enthesopathies-&-synovial-disorders-tenosynovitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-bursitis---primary/output
  enthesopathies-&-synovial-disorders---primary:
    run: enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-tenosynovitis---primary/output
  enthesopathies-&-synovial-disorders-allied---primary:
    run: enthesopathies-&-synovial-disorders-allied---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders---primary/output
  enthesopathies-&-synovial-disorders-capsulitis---primary:
    run: enthesopathies-&-synovial-disorders-capsulitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-allied---primary/output
  enthesopathies-&-synovial-disorders-shoulder---primary:
    run: enthesopathies-&-synovial-disorders-shoulder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-capsulitis---primary/output
  enthesopathies-&-synovial-disorders-rotator---primary:
    run: enthesopathies-&-synovial-disorders-rotator---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-shoulder---primary/output
  enthesopathies-&-synovial-disorders-supraspinatus---primary:
    run: enthesopathies-&-synovial-disorders-supraspinatus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-rotator---primary/output
  enthesopathies-&-synovial-disorders-thickness---primary:
    run: enthesopathies-&-synovial-disorders-thickness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-supraspinatus---primary/output
  subacromial-enthesopathies-&-synovial-disorders---primary:
    run: subacromial-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-thickness---primary/output
  enthesopathies-&-synovial-disorders-semimembranosus---primary:
    run: enthesopathies-&-synovial-disorders-semimembranosus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: subacromial-enthesopathies-&-synovial-disorders---primary/output
  enthesopathies-&-synovial-disorders-affection---primary:
    run: enthesopathies-&-synovial-disorders-affection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-semimembranosus---primary/output
  enthesopathies-&-synovial-disorders-periarthritis---primary:
    run: enthesopathies-&-synovial-disorders-periarthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-affection---primary/output
  enthesopathies-&-synovial-disorders-impingement---primary:
    run: enthesopathies-&-synovial-disorders-impingement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-periarthritis---primary/output
  enthesopathies-&-synovial-disorders-tendonitis---primary:
    run: enthesopathies-&-synovial-disorders-tendonitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-impingement---primary/output
  enthesopathies-&-synovial-disorders-region---primary:
    run: enthesopathies-&-synovial-disorders-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-tendonitis---primary/output
  enthesopathies-&-synovial-disorders-unspecified---primary:
    run: enthesopathies-&-synovial-disorders-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-region---primary/output
  enthesopathies-&-synovial-disorders-epicondylitis---primary:
    run: enthesopathies-&-synovial-disorders-epicondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-unspecified---primary/output
  enthesopathies-&-synovial-disorders-elbow---primary:
    run: enthesopathies-&-synovial-disorders-elbow---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-epicondylitis---primary/output
  collateral-enthesopathies-&-synovial-disorders---primary:
    run: collateral-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-elbow---primary/output
  bicepital-enthesopathies-&-synovial-disorders---primary:
    run: bicepital-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: collateral-enthesopathies-&-synovial-disorders---primary/output
  enthesopathies-&-synovial-disorders-tendinitis---primary:
    run: enthesopathies-&-synovial-disorders-tendinitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: bicepital-enthesopathies-&-synovial-disorders---primary/output
  enthesopathies-&-synovial-disorders-carpu---primary:
    run: enthesopathies-&-synovial-disorders-carpu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-tendinitis---primary/output
  enthesopathies-&-synovial-disorders-wrist---primary:
    run: enthesopathies-&-synovial-disorders-wrist---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-carpu---primary/output
  trochanteric-enthesopathies-&-synovial-disorders---primary:
    run: trochanteric-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-wrist---primary/output
  enthesopathies-&-synovial-disorders-adductor---primary:
    run: enthesopathies-&-synovial-disorders-adductor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: trochanteric-enthesopathies-&-synovial-disorders---primary/output
  enthesopathies-&-synovial-disorders-snapping---primary:
    run: enthesopathies-&-synovial-disorders-snapping---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-adductor---primary/output
  other-enthesopathies-&-synovial-disorders---primary:
    run: other-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-snapping---primary/output
  popliteal-enthesopathies-&-synovial-disorders---primary:
    run: popliteal-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: other-enthesopathies-&-synovial-disorders---primary/output
  enthesopathies-&-synovial-disorders-ligament---primary:
    run: enthesopathies-&-synovial-disorders-ligament---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: popliteal-enthesopathies-&-synovial-disorders---primary/output
  fibular-enthesopathies-&-synovial-disorders---primary:
    run: fibular-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-ligament---primary/output
  patellar-enthesopathies-&-synovial-disorders---primary:
    run: patellar-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: fibular-enthesopathies-&-synovial-disorders---primary/output
  enthesopathies-&-synovial-disorders-tarsus---primary:
    run: enthesopathies-&-synovial-disorders-tarsus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: patellar-enthesopathies-&-synovial-disorders---primary/output
  enthesopathies-&-synovial-disorders-ankle---primary:
    run: enthesopathies-&-synovial-disorders-ankle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-tarsus---primary/output
  enthesopathies-&-synovial-disorders-achille---primary:
    run: enthesopathies-&-synovial-disorders-achille---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-ankle---primary/output
  enthesopathies-&-synovial-disorders-anterior---primary:
    run: enthesopathies-&-synovial-disorders-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-achille---primary/output
  enthesopathies-&-synovial-disorders-posterior---primary:
    run: enthesopathies-&-synovial-disorders-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-anterior---primary/output
  peripheral-enthesopathies-&-synovial-disorders---primary:
    run: peripheral-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-posterior---primary/output
  enthesopathies-&-synovial-disorders-acquired---primary:
    run: enthesopathies-&-synovial-disorders-acquired---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: peripheral-enthesopathies-&-synovial-disorders---primary/output
  enthesopathies-&-synovial-disorders-trigger---primary:
    run: enthesopathies-&-synovial-disorders-trigger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-acquired---primary/output
  enthesopathies-&-synovial-disorders-finger---primary:
    run: enthesopathies-&-synovial-disorders-finger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-trigger---primary/output
  enthesopathies-&-synovial-disorders-quervain's---primary:
    run: enthesopathies-&-synovial-disorders-quervain's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-finger---primary/output
  enthesopathies-&-synovial-disorders-thumb---primary:
    run: enthesopathies-&-synovial-disorders-thumb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-quervain's---primary/output
  enthesopathies-&-synovial-disorders-flexor---primary:
    run: enthesopathies-&-synovial-disorders-flexor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-thumb---primary/output
  enthesopathies-&-synovial-disorders-extensor---primary:
    run: enthesopathies-&-synovial-disorders-extensor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-flexor---primary/output
  enthesopathies-&-synovial-disorders-longu---primary:
    run: enthesopathies-&-synovial-disorders-longu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-extensor---primary/output
  enthesopathies-&-synovial-disorders-digitorum---primary:
    run: enthesopathies-&-synovial-disorders-digitorum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-longu---primary/output
  enthesopathies-&-synovial-disorders-peroneu---primary:
    run: enthesopathies-&-synovial-disorders-peroneu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-digitorum---primary/output
  enthesopathies-&-synovial-disorders-bursa---primary:
    run: enthesopathies-&-synovial-disorders-bursa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-peroneu---primary/output
  enthesopathies-&-synovial-disorders-space---primary:
    run: enthesopathies-&-synovial-disorders-space---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-bursa---primary/output
  enthesopathies-&-synovial-disorders-baker---primary:
    run: enthesopathies-&-synovial-disorders-baker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-space---primary/output
  enthesopathies-&-synovial-disorders-synovium---primary:
    run: enthesopathies-&-synovial-disorders-synovium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-baker---primary/output
  nontraumatic-enthesopathies-&-synovial-disorders---primary:
    run: nontraumatic-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-synovium---primary/output
  enthesopathies-&-synovial-disorders-pollicis---primary:
    run: enthesopathies-&-synovial-disorders-pollicis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: nontraumatic-enthesopathies-&-synovial-disorders---primary/output
  spontaneous-enthesopathies-&-synovial-disorders---primary:
    run: spontaneous-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-pollicis---primary/output
  enthesopathies-&-synovial-disorders-classified---primary:
    run: enthesopathies-&-synovial-disorders-classified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: spontaneous-enthesopathies-&-synovial-disorders---primary/output
  lower-enthesopathies-&-synovial-disorders---primary:
    run: lower-enthesopathies-&-synovial-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-classified---primary/output
  enthesopathies-&-synovial-disorders---secondary:
    run: enthesopathies-&-synovial-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: lower-enthesopathies-&-synovial-disorders---primary/output
  enthesopathies-&-synovial-disorders-tenosynovitis---secondary:
    run: enthesopathies-&-synovial-disorders-tenosynovitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders---secondary/output
  enthesopathies-&-synovial-disorders-unspecified---secondary:
    run: enthesopathies-&-synovial-disorders-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-tenosynovitis---secondary/output
  other-enthesopathies-&-synovial-disorders---secondary:
    run: other-enthesopathies-&-synovial-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-unspecified---secondary/output
  enthesopathies-&-synovial-disorders-classified---secondary:
    run: enthesopathies-&-synovial-disorders-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: other-enthesopathies-&-synovial-disorders---secondary/output
  bursopathy-enthesopathies-&-synovial-disorders---secondary:
    run: bursopathy-enthesopathies-&-synovial-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-classified---secondary/output
  enthesopathies-&-synovial-disorders-epicondylitis---secondary:
    run: enthesopathies-&-synovial-disorders-epicondylitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: bursopathy-enthesopathies-&-synovial-disorders---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: enthesopathies-&-synovial-disorders-epicondylitis---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
