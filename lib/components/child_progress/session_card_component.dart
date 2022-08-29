import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kican_mobile_app/components/child_progress/traitement_score.dart';
import 'package:kican_mobile_app/services/child_progress/monthNumToName.dart';

class SessionCardComponent extends StatefulWidget {
  late DateTime _sessionDate;
  late String _sessionTitle;
  late bool _feedbackGiven;

  SessionCardComponent(
      {required DateTime sessionDate,
      required String sessionTitle,
      bool feedbackGiven = false,
      Key? key})
      : super(key: key) {
    _sessionDate = sessionDate;
    _sessionTitle = sessionTitle;
    _feedbackGiven = feedbackGiven;
  }

  @override
  State<SessionCardComponent> createState() => _SessionCardComponentState();
}

class _SessionCardComponentState extends State<SessionCardComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4))
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${widget._sessionDate.day} ${getMonthNameFromName(widget._sessionDate.month)} ${widget._sessionDate.year}',
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(104, 103, 106, 1)),
              ),
              Text(
                widget._sessionTitle,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(0, 205, 188, 1)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: widget._feedbackGiven
                      ? const Color.fromRGBO(0, 205, 188, 1)
                      : const Color.fromRGBO(238, 11, 79, 1),
                ),
                child: Text(
                  widget._feedbackGiven
                      ? 'View your feedback'
                      : 'Give your feedback',
                  style: GoogleFonts.poppins(
                    fontSize: 7,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TraitementScore(
                traitementName: 'Physical ability',
                score: 1,
              ),
              TraitementScore(
                traitementName: 'Physical ability',
                score: 3,
              ),
              TraitementScore(
                traitementName: 'Physical ability',
                score: 1,
              ),
              const Icon(Icons.check, size: 28, color: Color.fromRGBO(0, 205, 188, 1),),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromRGBO(0, 205, 188, 1),
                ),
                child: Text(
                  "View Doctor's note",
                  style: GoogleFonts.poppins(
                    fontSize: 7,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
