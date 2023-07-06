import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Uygulama Çerçevesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog Yazisi Uygulamasi"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi = ' Hoşgeldiniz';
  martGoster() {
    setState(() {
      blogYazisi =
          'Mart, Gregoryen Takvimine göre yilin 3. ayi olup 31 gündür. Antik Roma’da Mart ayının adı, Roma Savaş Tanrısı "Martius" idi ve bu ayın savaşa başlamak için şanslı bir zaman olduğu kabul edilirdi.';
    });
  }

  nisanGoster() {
    setState(() {
      blogYazisi =
          'Nisan, Gregoryen Takvimine göre yilin 4. ayi olup 30 gün çeker. Nisan sözcüğünün, Farsça (Nisan), Süryanice (Nisanna), Sümerce (Nisag = ilk meyveler), Akadca (Nisānu) ve İbranice (nîsān) sözcüklerinden alindiği söylenebilir. ';
    });
  }

  mayisGoster() {
    setState(() {
      blogYazisi =
          'Mayis, Gregoryen Takvimine göre yilin 5. ayi olup 31 gün çeker. Mayıs adı, Roma bereket Tanrıçası Bona Dea ile birlikte tanimlanan, Yunan Tanriçasi Maianin ayi" anlaminda Latince maius mensisten gelmektedir.';
    });
  }

  haziranGoster() {
    setState(() {
      blogYazisi =
          'Haziran; Jülyen ve Gregoryen takvimlerine göre yilin altinci ayidir. 30 gün çeken aylarin ikincisi ve 31 günden az olan beş aydan üçüncüsüdür.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(blogYazisi),
            ElevatedButton(
              onPressed: martGoster,
              child: Text('Mart Yazisi'),
            ),
            ElevatedButton(
              onPressed: nisanGoster,
              child: Text('Nisan Yazisi'),
            ),
            ElevatedButton(
              onPressed: mayisGoster,
              child: Text('Mayis Yazisi'),
            ),
            ElevatedButton(
              onPressed: haziranGoster,
              child: Text('Haziran Yazisi'),
            )
          ],
        ),
      ),
    );
  }
}
