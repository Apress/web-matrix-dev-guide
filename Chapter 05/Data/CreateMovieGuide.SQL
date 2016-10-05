CREATE DATABASE [MovieGuide] 
   ON (NAME = N'MovieGuide', 
       FILENAME = N'E:\MyData\MovieGuide.mdf' , 
       SIZE = 1, 
       FILEGROWTH = 10%) 
   LOG ON (NAME = N'MovieGuide_log', 
           FILENAME = N'E:\MyData\MovieGuide_log.LDF' , 
           FILEGROWTH = 10%)
