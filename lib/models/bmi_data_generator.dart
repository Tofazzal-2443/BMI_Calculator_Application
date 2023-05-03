class BmiDataGenerator {
  static const String underWeightSevere = 'Underweight (Severe thinnes)';
  static const String underWeightModerate = 'Underweight (Moderate thinnes)';
  static const String underWeightMild = 'Underweight (Mild thinnes)';
  static const String normal = 'Normal';
  static const String overweightPreObese = 'Overwight (Pre-obese)';
  static const String overweightObese1 = 'Obese (Classs I)';
  static const String overweightObese2 = 'Obese (Class II)';
  static const String overweightObese3 = 'Obese (Class III)';

  static String generateStatus(double bmi) {
    String status = '';
    if (bmi < 16.0) {
      status = underWeightSevere;
    } else if (bmi >= 16.0 && bmi < 17.0) {
      status = underWeightModerate;
    } else if (bmi >= 17.0 && bmi < 18.50) {
      status = underWeightMild;
    } else if (bmi >= 18.50 && bmi < 25.0) {
      status = normal;
    } else if (bmi >= 25.0 && bmi < 30.0) {
      status = overweightPreObese;
    } else if (bmi >= 30.0 && bmi < 35.0) {
      status = overweightObese1;
    } else if (bmi >= 35.0 && bmi < 40.0) {
      status = overweightObese2;
    } else {
      status = overweightObese3;
    }
    return status;
  }

  static final Map<String, String> bmiTableMap = {
    underWeightSevere: '< 16.0',
    underWeightModerate: '16.0 – 16.9',
    underWeightMild: '17.0 – 18.4',
    normal: '18.5 – 24.9',
    overweightPreObese: '25.0 – 29.9',
    overweightObese1: '30.0 – 34.9',
    overweightObese2: '35.0 – 39.9',
    overweightObese3: '≥ 40.0',
  };
}
