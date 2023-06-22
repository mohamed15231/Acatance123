part of 'Send_Message_Imports.dart';

class Send_Message_Data{
  static Widget buildFile(PlatformFile file) {
    final kb = file.size / 1024;
    final mb = kb / 1024;
    final fileSize =
    mb >= 1 ? '${mb.toStringAsFixed(2)} MB' : '${kb.toStringAsFixed(2)} KB';

    final extension = file.extension ?? 'None';

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              '.$extension',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color:Colors.white
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            file.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 12
            ),
          ),
          Text(
            fileSize,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }


}