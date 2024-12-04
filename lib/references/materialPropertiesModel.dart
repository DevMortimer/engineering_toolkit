// =================================
// CARBON STEEL
// =================================
final List<String> carbonSteelHeader = [
  'Condition',
  'Yield Strength (ksi)',
  'Ultimate Strength (ksi)',
  'Elongation (%)',
  'Elastic Modulus (psi)',
  'Density (lb/in³)',
  'Poisson\'s Ratio',
];
final List<String> carbonSteelSideBar = [
  'AISI 1020',
  'AISI 1020',
  'AISI 1020',
  'AISI 1020',
  'AISI 1020',
  'AISI 1045',
  'AISI 1045',
  'AISI 1045',
  'AISI 1045',
  'AISI 1045',
  'ASTM A36',
  'ASTM A516',
];
final List<List<String>> carbonSteel = [
  ['Hot Rolled', '32', '50', '25', '29e6', '0.283', '0.32'],
  ['Cold Worked', '60', '70', '5', '29e6', '0.283', '0.32'],
  ['Stress Relieved', '50', '65', '10', '29e6', '0.283', '0.32'],
  ['Annealed', '28', '48', '30', '29e6', '0.283', '0.32'],
  ['Normalized', '34', '55', '22', '29e6', '0.283', '0.32'],
  ['Hot Rolled', '45', '75', '15', '29e6', '0.283', '0.32'],
  ['Cold Worked', '80', '90', '5', '29e6', '0.283', '0.32'],
  ['Stress Relieved', '70', '80', '8', '29e6', '0.283', '0.32'],
  ['Annealed', '35', '65', '20', '29e6', '0.283', '0.32'],
  ['Normalized', '48', '75', '15', '29e6', '0.283', '0.32'],
  ['', '36', '58', '21', '29e6', '0.283', '0.3'],
  ['Grade 70', '38', '70', '17', '29e6', '0.283', '0.3'],
];

// =================================
// ALLOY STEEL
// =================================
final List<String> alloySteelHeader = [
  'Condition',
  'Yield Strength (ksi)',
  'Ultimate Strength (ksi)',
  'Elongation (%)',
  'Elastic Modulus (psi)',
  'Density (lb/in³)',
  'Poisson\'s Ratio',
];
final List<String> alloySteelSideBar = [
  'AISI 4130',
  'AISI 4130',
  'AISI 4130',
  'AISI 4130',
  'AISI 4140',
  'AISI 4140',
  'AISI 4140',
  'AISI 4140',
  'ASTM A242',
  'ASTM A302',
  'ASTM A302',
  'ASTM A514',
  'ASTM A517',
  'ASTM A533',
  'ASTM A533',
  'ASTM A533',
  'ASTM A572',
  'ASTM A588',
  'ASTM A633',
  'ASTM A656',
  'ASTM A656',
  'ASTM A656',
  'ASTM A656',
  'ASTM A656',
  'ASTM A710',
  'HY-80',
  'HY-100',
];
final List<List<String>> alloySteel = [
  ['Hot Rolled', '70', '90', '20', '29e6', '0.283', '0.32'],
  ['Stress Relieved', '85', '105', '10', '29e6', '0.283', '0.32'],
  ['Annealed', '55', '75', '30', '29e6', '0.283', '0.32'],
  ['Normalized', '60', '90', '20', '29e6', '0.283', '0.32'],
  ['Hot Rolled', '90', '120', '15', '29.7e6', '0.283', '0.32'],
  ['Stress Relieved', '100', '120', '10', '29.7e6', '0.283', '0.32'],
  ['Annealed', '60', '80', '25', '29.7e6', '0.283', '0.32'],
  ['Normalized', '90', '120', '20', '29.7e6', '0.283', '0.32'],
  ['', '46', '67', '18', '30e6', '0.282', '0.3'],
  ['Grade A', '45', '75', '15', '29e6', '0.282', '0.29'],
  ['Grade C', '50', '80', '17', '29e6', '0.282', '0.29'],
  ['Quenched & Tempered', '100', '110', '18', '29e6', '0.283', '0.3'],
  ['Grade F', '100', '115', '16', '29e6', '0.280', '0.29'],
  ['Class 1', '50', '80', '18', '29e6', '0.282', '0.29'],
  ['Class 2', '70', '90', '16', '29e6', '0.282', '0.29'],
  ['Class 3', '83', '100', '16', '29e6', '0.282', '0.29'],
  ['Grade 50', '50', '65', '18', '30e6', '0.283', '0.3'],
  ['', '50', '70', '18', '29.7e6', '0.280', '0.28'],
  ['Grade E', '55', '75', '18', '29.7e6', '0.280', '0.28'],
  ['Grade 50', '50', '60', '20', '29e6', '0.282', '0.29'],
  ['Grade 60', '60', '70', '17', '29e6', '0.282', '0.29'],
  ['Grade 70', '70', '80', '14', '29e6', '0.282', '0.29'],
  ['Grade 80', '80', '90', '12', '29e6', '0.282', '0.29'],
  ['Grade 100', '100', '110', '12', '29e6', '0.282', '0.29'],
  ['Grade A', '80', '85', '20', '29.7e6', '0.280', '0.3'],
  ['', '80', '--', '18', '29.7e6', '0.280', '0.3'],
  ['', '100', '--', '16', '29.7e6', '0.284', '0.3'],
];

// =================================
// STAINLESS STEEL
// =================================
final List<String> stainlessSteelHeader = [
  'Class',
  'Condition',
  'Yield Strength (ksi)',
  'Ultimate Strength (ksi)',
  'Elongation (%)',
  'Elastic Modulus (psi)',
  'Density (lb/in³)',
  'Poisson\'s Ratio',
];
final List<String> stainlessSteelSideBar = [
  'AISI 201',
  'AISI 202',
  'AISI 302',
  'AISI 304',
  'AISI 304L',
  'AISI 316',
  'AISI 316L',
  'AISI 405',
  'AISI 410',
  'AISI 410',
  'AISI 430',
  'AISI 446',
  '15-5PH',
  '15-5PH',
  '15-5PH',
  '17-4PH',
  '17-4PH',
  '17-4PH',
  '17-7PH',
  'A-286',
  'Alloy 2205',
  'Ferralium 255',
];
final List<List<String>> stainlessSteel = [
  ['Austenitic', 'Annealed', '40', '75', '40', '28e6', '0.289', '0.27'],
  ['Austenitic', 'Annealed', '40', '75', '40', '28e6', '0.289', '0.27'],
  ['Austenitic', 'Annealed', '30', '75', '40', '28e6', '0.289', '0.27'],
  ['Austenitic', 'Annealed', '30', '75', '40', '28e6', '0.289', '0.29'],
  ['Austenitic', 'Annealed', '25', '70', '40', '28e6', '0.289', '0.28'],
  ['Austenitic', 'Annealed', '30', '75', '40', '28e6', '0.289', '0.26'],
  ['Austenitic', 'Annealed', '25', '70', '40', '28e6', '0.289', '0.26'],
  ['Ferritic', '', '25', '60', '20', '29e6', '0.282', '0.28'],
  ['Martensitic', 'Annealed', '40', '70', '16', '29e6', '0.282', '0.28'],
  [
    'Martensitic',
    'Quenched &\nTempered',
    '80',
    '100',
    '12',
    '29e6',
    '0.282',
    '0.28'
  ],
  ['Ferritic', '', '30', '60', '20', '29e6', '0.282', '0.28'],
  ['Ferritic', 'Annealed', '40', '65', '16', '29e6', '0.282', '0.28'],
  [
    'Martensitic precipitation\nhardenable',
    'H900',
    '170',
    '190',
    '10',
    '28.5e6',
    '0.283',
    '0.27'
  ],
  [
    'Martensitic precipitation\nhardenable',
    'H1025',
    '145',
    '155',
    '12',
    '28.5e6',
    '0.283',
    '0.27'
  ],
  [
    'Martensitic precipitation\nhardenable',
    'H1150',
    '105',
    '135',
    '16',
    '28.5e6',
    '0.283',
    '0.27'
  ],
  [
    'Martensitic precipitation\nhardenable',
    'H900',
    '170',
    '190',
    '10',
    '28.5e6',
    '0.283',
    '0.27'
  ],
  [
    'Martensitic precipitation\nhardenable',
    'H1025',
    '145',
    '155',
    '12',
    '28.5e6',
    '0.283',
    '0.27'
  ],
  [
    'Martensitic precipitation\nhardenable',
    'H1150',
    '105',
    '135',
    '16',
    '28.5e6',
    '0.283',
    '0.27'
  ],
  [
    'Semiaustenitic precipitation\nhardenable',
    'TH1050',
    '150',
    '177',
    '6',
    '29e6',
    '0.276',
    '0.28'
  ],
  [
    'Austenitic precipitation\nhardenable',
    '',
    '95',
    '140',
    '15',
    '29.1e6',
    '0.287',
    '0.31'
  ],
  [
    'Duplex Austenitic-Ferritic',
    '',
    '65',
    '95',
    '25',
    '28.5e6',
    '0.287',
    '0.27'
  ],
  [
    'Duplex Austenitic-Ferritic',
    '',
    '80',
    '110',
    '15',
    '28.5e6',
    '0.287',
    '0.27'
  ],
];

// =================================
// ALUMINUM ALLOYS
// =================================
final List<String> aluminumAlloyHeader = [
  'Condition',
  'Yield Strength (ksi)',
  'Ultimate Strength (ksi)',
  'Elongation (%)',
  'Elastic Modulus (psi)',
  'Density (lb/in³)',
  'Poisson\'s Ratio',
];
final List<String> aluminumAlloySideBar = [
  'Al 2014',
  'Al 2024',
  'Al 5052',
  'Al 5083',
  'Al 5083',
  'Al 6061',
  'Al 6061',
  'Al 7075',
];
final List<List<String>> aluminumAlloy = [
  ['T6, T651', '59', '67', '7', '10.5e6', '0.101', '0.33'],
  ['T4', '40', '62', '10', '10.5e6', '0.1', '0.33'],
  ['H32', '23', '38', '9', '10.1e6', '0.097', '0.33'],
  ['H116, H321', '31', '44', '10', '10.3e6', '0.096', '0.33'],
  ['H32', '31', '56', '12', '10.3e6', '0.096', '0.33'],
  ['T4', '16', '26', '16', '9.9e6', '0.098', '0.33'],
  ['T6', '35', '38', '8', '9.9e6', '0.098', '0.33'],
  ['T6, T651', '68', '78', '6', '10.3e6', '0.101', '0.33'],
];

// =================================
// NICKEL STEEL
// =================================
final List<String> nickelAlloyHeader = [
  'Condition',
  'Yield Strength (ksi)',
  'Ultimate Strength (ksi)',
  'Elongation (%)',
  'Elastic Modulus (psi)',
  'Density (lb/in³)',
  'Poisson\'s Ratio',
];
final List<String> nickelAlloySideBar = [
  'Hastelloy C-276',
  'Inconel 625',
  'Inconel 625',
  'Inconel 686',
  'Inconel 686',
  'Inconel 686',
  'Inconel 718',
  'Inconel 718',
  'Inconel 725',
  'Inconel 725',
  'Monel 400',
  'Monel 400',
  'Monel 400',
  'Monel K-500',
  'Monel K-500',
];
final List<List<String>> nickelAlloy = [
  ['Solution annealed', '41', '100', '40', '29.8e6', '0.321', '0.28'],
  ['Grade 1', '55', '110', '30', '29.8e6', '0.305', '0.28'],
  ['Grade 2', '40', '100', '30', '29.8e6', '0.305', '0.28'],
  ['Grade 1', '85', '120', '20', '29.8e6', '0.315', '0.28'],
  ['Grade 2', '125', '135', '20', '29.8e6', '0.315', '0.28'],
  ['Grade 3', '150', '160', '20', '29.8e6', '0.315', '0.28'],
  ['Solution annealed & aged', '120', '150', '20', '29.4e6', '0.297', '0.29'],
  ['Solution heat treated', '150', '180', '10', '29.4e6', '0.297', '0.29'],
  ['Solution annealed', '40', '75', '45', '29.6e6', '0.3', '0.31'],
  ['Solution annealed & aged', '120', '150', '20', '29.6e6', '0.3', '0.31'],
  ['Annealed', '25', '70', '35', '26e6', '0.319', '0.32'],
  ['Hot worked', '40', '75', '30', '26e6', '0.319', '0.32'],
  ['Cold worked, stress relieved', '50', '80', '20', '26e6', '0.319', '0.32'],
  ['Annealed & aged', '85', '130', '20', '26e6', '0.306', '0.32'],
  ['Cold worked & aged', '100', '140', '15', '26e6', '0.306', '0.32'],
];

// =================================
// COPPER ALLOYS
// =================================
final List<String> copperAlloyHeader = [
  'Condition',
  'Yield Strength (ksi)',
  'Ultimate Strength (ksi)',
  'Elongation (%)',
  'Elastic Modulus (psi)',
  'Density (lb/in³)',
  'Poisson\'s Ratio',
];
final List<String> copperAlloySideBar = [
  '70/30 Copper-Nickel',
  '70/30 Copper-Nickel',
  '90/10 Copper-Nickel',
  '90/10 Copper-Nickel',
  'Aluminum Bronze',
  'Beryllium Copper',
  'Beryllium Copper',
  'Nickel Aluminum Bronze 632',
  'Nickel Aluminum Bronze 632',
];
final List<List<String>> copperAlloy = [
  ['Annealed', '18', '45', '30', '21.8e6', '0.323', '0.3'],
  ['Cold worked', '50', '65', '10', '21.8e6', '0.323', '0.3'],
  ['Annealed', '15', '38', '30', '20.3e6', '0.323', '0.3'],
  ['Cold worked', '30', '50', '15', '20.3e6', '0.323', '0.3'],
  ['', '32', '85', '12', '15.5e6', '0.269', '0.316'],
  ['Solution heat treated', '75', '85', '8', '18.5e6', '0.298', '0.27'],
  ['Precipitation heat treated', '140', '165', '3', '18.5e6', '0.298', '0.27'],
  ['Annealed', '34', '90', '10', '16.7e6', '0.274', '0.32'],
  ['Quench hardened', '50', '90', '15', '16.7e6', '0.274', '0.32'],
];

// =================================
// TITANIUM ALLOYS
// =================================
final List<String> titaniumAlloyHeader = [
  'Condition',
  'Yield Strength (ksi)',
  'Ultimate Strength (ksi)',
  'Elongation (%)',
  'Elastic Modulus (psi)',
  'Density (lb/in³)',
  'Poisson\'s Ratio',
];
final List<String> titaniumAlloySideBar = [
  'Commercially Pure',
  'Ti-5Al-2.5Sn',
  'Ti-6Al-4V',
  'Ti-6Al-4V, ELI',
  'Ti-5-1-1-1',
];
final List<List<String>> titaniumAlloy = [
  ['Grade 2', '40', '50', '20', '14.8e6', '0.163', '0.34'],
  ['Annealed', '110', '115', '10', '15.5e6', '0.162', '0.31'],
  ['Grade 5', '120', '130', '10', '16e6', '0.16', '0.31'],
  ['Grade 23', '110', '120', '10', '16.5e6', '0.16', '0.31'],
  ['Grade 32', '85', '100', '10', '16e6', '0.16', '0.31'],
];

// =================================
// CAST IRONS
// =================================
final List<String> castIronHeader = [
  'Class',
  'Condition',
  'Yield Strength (ksi)',
  'Ultimate Strength (ksi)',
  'Elongation (%)',
  'Elastic Modulus (psi)',
  'Density (lb/in³)',
  'Poisson\'s Ratio',
];
final List<String> castIronSideBar = [
  'ASTM A159',
  'ASTM A159',
  'ASTM A159',
  'ASTM A159',
  'ASTM A159',
  'ASTM A536',
  'ASTM A536',
  'ASTM A536',
  'ASTM A536',
  'ASTM A536',
];
final List<List<String>> castIron = [
  ['Gray Cast Iron', 'G1800', '---', '18', '--', '9.6 - 14e6', '0.264', '0.26'],
  ['Gray Cast Iron', 'G2500', '---', '25', '--', '12 - 15e6', '0.264', '0.26'],
  [
    'Gray Cast Iron',
    'G3000',
    '---',
    '30',
    '--',
    '13 - 16.4e6',
    '0.264',
    '0.26'
  ],
  [
    'Gray Cast Iron',
    'G3500',
    '---',
    '35',
    '--',
    '14.5 - 17e6',
    '0.264',
    '0.26'
  ],
  ['Gray Cast Iron', 'G4000', '---', '40', '--', '16 - 20e6', '0.264', '0.26'],
  [
    'Ductile Cast Iron',
    'Grade 60-40-18',
    '40',
    '60',
    '18',
    '24.5e6',
    '0.256',
    '0.29'
  ],
  [
    'Ductile Cast Iron',
    'Grade 65-45-12',
    '45',
    '65',
    '12',
    '24.5e6',
    '0.256',
    '0.3'
  ],
  [
    'Ductile Cast Iron',
    'Grade 80-55-06',
    '55',
    '80',
    '6',
    '24.5e6',
    '0.256',
    '0.31'
  ],
  [
    'Ductile Cast Iron',
    'Grade 100-70-03',
    '70',
    '100',
    '3',
    '24.5e6',
    '0.256',
    '0.3'
  ],
  [
    'Ductile Cast Iron',
    'Grade 120-90-02',
    '90',
    '120',
    '2',
    '23.8e6',
    '0.256',
    '0.28'
  ],
];
