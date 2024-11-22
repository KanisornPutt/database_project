# ShanePee : Project Final Report

เสนอ
รศ.ดร.โชติรัตน์ รัตนามหัทธนะ

โครงการนี้เป็นส่วนหนึ่งของรายวิชา 2110322 ระบบฐานข้อมูล
ภาคการศึกษาต้น ปีการศึกษา 2567
ภาควิชาคอมพิวเตอร์ คณะวิศวกรรมศาสตร์ จุฬาลงกรณ์มหาวิทยาลัย



## Introduction and Organization Background

บริษัท ShanePee เป็นบริษัทสตาร์ทอัพที่มีความเชี่ยวชาญในการพัฒนา Software และ Web Application ที่มีเป้าหมายเพื่ออำนวยความสะดวกในชีวิตประจำวันของผู้ใช้งาน สร้างสรรค์โซลูชันที่สามารถตอบโจทย์ความต้องการของผู้ใช้งานได้อย่างมีประสิทธิภาพ โดยพวกเรามุ่งเน้นการพัฒนานวัตกรรมที่สามารถสร้างคุณค่าและช่วยแก้ไขปัญหาในตลาดที่มีศักยภาพ

 ในโครงการนี้ พวกเราได้มองเห็นโอกาสในตลาดการซื้อขาย Art Toy ที่กำลังเติบโตอย่างรวดเร็ว ปัจจุบันการซื้อ Art Toy ที่ขายแบบสุ่มในกล่อง (Blind Boxes) กำลังเป็นที่นิยมอย่างมาก โดยกล่องเหล่านี้จะถูกบรรจุในลักษณะที่ไม่สามารถมองเห็นของเล่นภายในได้ ผู้ซื้อจะไม่ทราบล่วงหน้าว่าจะได้รับตัวไหนจนกว่าจะเปิดกล่องออกมา การซื้อแบบนี้ได้เพิ่มความตื่นเต้นและท้าทายให้กับการสะสม เนื่องจากผู้ซื้อไม่สามารถเลือกตัวที่ต้องการได้โดยตรง 

อย่างไรก็ตาม การสุ่มซื้อ Art Toy อาจทำให้ผู้ซื้อมีโอกาสที่จะได้รับของเล่นที่ซ้ำกับที่ตนมีอยู่แล้ว หรือได้รับชิ้นที่ไม่ต้องการสะสม ซึ่งนำมาสู่ปัญหาว่าผู้ซื้อบางคนไม่รู้ว่าจะจัดการอย่างไรกับของเล่นที่ไม่ได้ต้องการ ไม่ว่าจะเป็นการทิ้ง ให้ผู้อื่น หรือแลกเปลี่ยนกับคนรู้จัก และในกรณีที่ต้องการขายต่อ ผู้ซื้อหลายคนก็ไม่ทราบว่าจะสามารถขายได้ที่ไหนอย่างปลอดภัย ถึงแม้ว่าปัจจุบันจะมีแหล่งและชุมชนออนไลน์ที่เป็นที่นิยมสำหรับการซื้อขาย Art Toy ที่เปิดกล่องแล้วอยู่บ้าง แต่ระบบเหล่านั้นยังขาดการรับประกันความปลอดภัยและความน่าเชื่อถือ อีกทั้งยังมีการกระจายตัวไปในหลายช่องทาง ทำให้ผู้ซื้อและผู้ขายพบกับความไม่สะดวกในการค้นหาหรือใช้งาน 

กลุ่มของเราจึงมองเห็นโอกาสในการสร้าง แพลตฟอร์มเฉพาะสำหรับการซื้อขาย Art Toy ที่เปิดกล่องแล้ว โดยเน้นเรื่องความปลอดภัย ความน่าเชื่อถือ และความสะดวกสบายในการใช้งาน ซึ่งจะช่วยตอบสนองความต้องการและแก้ไขปัญหาที่กล่าวมาอย่างมีประสิทธิภาพ

## Objective of the project
จุดประสงค์ของโปรเจคนี้คือการสร้างระบบ web-based application ที่เป็นตัวกลางในการซื้อขาย Art Toy ที่เปิดกล่องแล้ว เพื่อความน่าเชื่อถือ ความปลอดภัย และความสะดวกสบายในการซื้อขาย Art Toy ที่เปิดกล่องแล้ว โดยผู้ซื้อสามารถเลือกซื้อ Art Toy ที่ตนต้องการได้สะดวกสบายด้วยระบบการกรองข้อมูล Art Toy ตามคุณลักษณะที่ต้องการ(เช่น ชื่อของ Art Toy, ชื่อของ Collection, ราคา, promotion) ผู้ขายมีตัวกลางในการปล่อยขาย Art Toy ที่ตนไม่ต้องการสะสม มีระบบการรีวิว ผู้ซื้อ และผู้ขายเพื่อให้ผู้ใช้สามารถตรวจสอบข้อมูลประวัติก่อนทำการซื้อขาย Art Toy มีระบบยืนยันตัวตนกับทางแพลตฟอร์มด้วยบัตรประชาชน รองรับระบบการชำระเงินที่หลากหลาย และระบบแชทระหว่างผู้ซื้อและผู้ขาย


## ER DIAGRAM
![ER DIAGRAM](https://cdn.discordapp.com/attachments/689374296040407040/1307370253042454548/Untitled.png?ex=673a0eee&is=6738bd6e&hm=dd90fc485f3930e60b04f6e60d01136033ddebdfd7502bfd087bff5a87a03a67&)