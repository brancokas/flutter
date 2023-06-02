class Allergy {
  Allergy(
      {this.gluten = false,
      this.orasastiPlodovi = false,
      this.soja = false,
      this.riba = false,
      this.jaja = false});
  bool gluten, orasastiPlodovi, soja, riba, jaja;

  bool hasAllergies() {
    return gluten || orasastiPlodovi || soja || riba || jaja;
  }

  List<String> toList() {
    List<String> result = [];
    if (hasAllergies()) {
      if (gluten) {
        result.add("gluten");
      }
      if (orasastiPlodovi) {
        result.add("orasastiPlodovi");
      }
      if (soja) {
        result.add("soja");
      }
      if (riba) {
        result.add("riba");
      }
      if (jaja) {
        result.add("jaja");
      }
    }
    return result;
  }

  static Allergy fromListToAllergy(List<String> list) {
    bool gluten = false,
        orasastiPlodovi = false,
        jaja = false,
        riba = false,
        soja = false;
    if (list.contains("gluten")) {
      gluten = true;
    }
    if (list.contains("orasastiPlodovi")) {
      orasastiPlodovi = true;
    }
    if (list.contains("soja")) {
      soja = true;
    }
    if (list.contains("jaja")) {
      jaja = true;
    }
    if (list.contains("riba")) {
      riba = true;
    }
    return Allergy(
        gluten: gluten,
        orasastiPlodovi: orasastiPlodovi,
        soja: soja,
        riba: riba,
        jaja: jaja);
  }
}
