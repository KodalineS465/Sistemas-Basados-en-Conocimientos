(deftemplate MAIN::Enfermedad
   (slot id)
   (slot nombre)
   (multislot signos)
   (multislot sintomas))

(deftemplate MAIN::input
   (slot consulta-enfermedad)
   (slot consulta-signos)
   (slot consulta-sintomas)
   (slot eliminar-enfermedad))

(deffacts MAIN::BaseConocimientos
   (Enfermedad (id 1) (nombre gripe) (signos fiebre cansancio) (sintomas dolor_de_cabeza tos))
   (Enfermedad (id 2) (nombre influenza) (signos congestion nauseas) (sintomas escalofrios dolor_muscular))
   (Enfermedad (id 3) (nombre diabetes) (signos cicatrizacion_deficiente polifagia) (sintomas polidipsia poliuria))
   (Enfermedad (id 4) (nombre alergia) (signos erupcion hinchazon) (sintomas dificultad_respirar picazon))
   (Enfermedad (id 5) (nombre intoxicacion_alimentaria) (signos fiebre inflamacion_abdominal) (sintomas nauseas dolor_estomacal))
   (Enfermedad (id 6) (nombre asma) (signos silibancias tos) (sintomas opresion_pecho dificultad_respirar)))

(defrule MAIN::ConsultarEnfermedad
   (input (consulta-enfermedad ?nombre))
   (Enfermedad (nombre ?nombre) (id ?id) (signos $?s) (sintomas $?t))
   =>
   (printout t "Enfermedad: " ?nombre " (ID: " ?id ")" crlf)
   (printout t "Signos: " ?s crlf)
   (printout t "Síntomas: " ?t crlf))

(defrule MAIN::ConsultarSignos
   (input (consulta-signos ?enfermedad))
   (Enfermedad (nombre ?enfermedad) (signos $?signos))
   =>
   (printout t "Signos de " ?enfermedad ": " ?signos crlf))

(defrule MAIN::ConsultarSintomas
   (input (consulta-sintomas ?enfermedad))
   (Enfermedad (nombre ?enfermedad) (sintomas $?sintomas))
   =>
   (printout t "Síntomas de " ?enfermedad ": " ?sintomas crlf))

(defrule MAIN::EliminarEnfermedad
   (input (eliminar-enfermedad ?id))
   ?enfermedad <- (Enfermedad (id ?id))
   =>
   (printout t "Enfermedad con ID " ?id " eliminada." crlf)
   (retract ?enfermedad))

