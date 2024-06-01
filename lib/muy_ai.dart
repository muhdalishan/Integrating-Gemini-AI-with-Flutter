import 'package:flutter/material.dart';

class Myagent extends StatefulWidget {
  const Myagent({Key? key}) : super(key: key);

  @override
  _MyagentState createState() => _MyagentState();
}

class _MyagentState extends State<Myagent> {
  var agentlist = [
    {
      "name": 'flutter help',
      'prompt':
          'If you are a flutter developer, I will send code and you have to tell me using your knowledge base and flutter documentation.',
    },
    {
      'name': 'upwork',
      'prompt': 'I am a freelancer and I want to know how to get a job on Upwork.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Myagent'),
      ),
      body: ListView.builder(
        itemCount: agentlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(agentlist[index]['name']),
            subtitle: Text(agentlist[index]['prompt']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AgentDetail(agent: agentlist[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class AgentDetail extends StatelessWidget {
  final Map<String, dynamic> agent;

  const AgentDetail({Key? key, required this.agent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(agent['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(agent['prompt']),
      ),
    );
  }
}
