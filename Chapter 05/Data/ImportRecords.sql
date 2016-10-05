BULK INSERT MovieGuide..ExistingMovies
   FROM 'E:\MyData\MovieGuideData.DAT'
   WITH (FORMATFILE = 'E:\MyData\MovieGuideData.FMT')
