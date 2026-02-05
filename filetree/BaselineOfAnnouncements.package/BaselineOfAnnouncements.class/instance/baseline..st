baseline
baseline: spec
  <baseline>

  spec
    for: #'gemstone'
    do: [
      spec
          package: 'Announcements-Core-GemStone';
          package: 'Announcements-Extensions-GemStone';
          package: 'Announcements-Core-GemStone-Test' 
              with: [ spec requires: #('Announcements-Core-GemStone' 'Announcements-Extensions-GemStone')].
      spec
          group: 'Core' with: #('Announcements-Core-GemStone' 'Announcements-Extensions-GemStone') ];
          group: 'Tests' with: #('Announcements-Core-GemStone-Test')