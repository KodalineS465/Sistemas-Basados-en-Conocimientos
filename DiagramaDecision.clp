(deftemplate MAIN::Enfermedad
   (slot id)
   (slot nombre)
   (multislot signos)
   (multislot sintomas))

(deffacts MAIN::BaseConocimientos
   (Enfermedad (id 1) (nombre gripe) (signos fiebre cansancio) (sintomas dolor_de_cabeza tos))
   (Enfermedad (id 2) (nombre influenza) (signos congestion nauseas) (sintomas escalofrios dolor_muscular))
   (Enfermedad (id 3) (nombre diabetes) (signos cicatrizacion_deficiente polifagia) (sintomas polidipsia poliuria))
   (Enfermedad (id 4) (nombre alergia) (signos erupcion hinchazon) (sintomas dificultad_respirar picazon))
   (Enfermedad (id 5) (nombre intoxicacion_alimentaria) (signos fiebre inflamacion_abdominal) (sintomas nauseas dolor_estomacal))
   (Enfermedad (id 6) (nombre asma) (signos silibancias tos) (sintomas opresion_pecho dificultad_respirar)))

(defrule MAIN::Pregunta-Fiebre
   (not (enfermedad-diagnosticada ?))
   =>
   (printout t "¿La enfermedad tiene fiebre? (Sí/No): ")
   (assert (respuesta-fiebre (read))))

(defrule MAIN::Diagnostico-Gripe
   (not (enfermedad-diagnosticada ?))
   (respuesta-fiebre Sí)
   (respuesta-cansancio Sí)
   =>
   (assert (enfermedad-diagnosticada gripe))
   (printout t "La enfermedad podría ser gripe." crlf))

(defrule MAIN::Pregunta-Tos
   (not (enfermedad-diagnosticada ?))
   (respuesta-fiebre Sí)
   (not (respuesta-cansancio Sí))
   =>
   (printout t "¿La enfermedad tiene tos? (Sí/No): ")
   (assert (respuesta-tos (read))))

(defrule MAIN::Diagnostico-Intoxicacion
   (not (enfermedad-diagnosticada ?))
   (respuesta-fiebre Sí)
   (respuesta-tos Sí)
   =>
   (assert (enfermedad-diagnosticada intoxicacion_alimentaria))
   (printout t "La enfermedad podría ser intoxicación alimentaria." crlf))

(defrule MAIN::Pregunta-Congestion
   (not (enfermedad-diagnosticada ?))
   (respuesta-fiebre No)
   =>
   (printout t "¿La enfermedad tiene congestión? (Sí/No): ")
   (assert (respuesta-congestion (read))))

(defrule MAIN::Pregunta-Nauseas
   (not (enfermedad-diagnosticada ?))
   (respuesta-fiebre No)
   (respuesta-congestion Sí)
   =>
   (printout t "¿La enfermedad tiene náuseas? (Sí/No): ")
   (assert (respuesta-nauseas (read))))

(defrule MAIN::Diagnostico-Influenza
   (not (enfermedad-diagnosticada ?))
   (respuesta-fiebre No)
   (respuesta-congestion Sí)
   (respuesta-nauseas Sí)
   =>
   (assert (enfermedad-diagnosticada influenza))
   (printout t "La enfermedad podría ser influenza." crlf))

