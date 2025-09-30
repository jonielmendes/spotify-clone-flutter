
import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Olá',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Seção "Ouça novamente"
            const Text(
              'Ouça novamente',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            
            // Grid de playlists pequenas
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: [
                _buildSmallPlaylistCard('Top 50\nGlobal'),
                _buildSmallPlaylistCard('Desplugado'),
                _buildSmallPlaylistCard('Melhores do Sertanejo'),
                _buildSmallPlaylistCard('Top 2023\nSertaneja'),
              ],
            ),
            
            const SizedBox(height: 32),
            
            // Seção "Playlist do Joniel"
            const Text(
              'Playlist do Joniel',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildPlaylistCard('Julia Wolf, Khalid, ayokay and more'),
                  _buildPlaylistCard('Joywave, The xx, The Neighbourhood and... - 2'),
                  _buildPlaylistCard('Eminem, Arctic Monkeys and The Weeknd'),
                  _buildPlaylistCard('Julia Wolf, Khalid, ayokay and more'),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Seção "Episódios para você"
            const Text(
              'Episódios para você',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildPlaylistCard('PrimoCast'),
                  _buildPlaylistCard('Jota Jota PodCast'),
                  _buildPlaylistCard('Os Sócios PodCast'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Biblioteca',
          ),
        ],
      ),
    );
  }

  Widget _buildSmallPlaylistCard(String title) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF292929),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              image: DecorationImage(
                image: _getImageProvider(title),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaylistCard(String description) {
    return Container(
      width: 147,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 147,
            height: 147,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: _getImageProvider(description),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              color: Color(0xFFD1D1D1),
              fontSize: 12,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  // Método para escolher a imagem baseada no conteúdo
  ImageProvider _getImageProvider(String title) {
    // Mapear títulos para imagens locais ou usar placeholder
    if (title.contains('Top 50') || title.contains('Global')) {
      // Usa a imagem correta do Top 50
      return const AssetImage('assets/images/top50.png');
    } else if (title.contains('Melhores do Sertanejo')) {
      // Usa a imagem correta do Sertanejo
      return const AssetImage('assets/images/sertanejo.png');
    } else if (title.contains('Top 2023') || title.contains('Sertaneja')) {
      // Para o Top 2023 Sertaneja (usando a mesma do sertanejo por enquanto)
      return const AssetImage('assets/images/sertanejo.png');
    } else if (title.contains('Desplugado')) {
      // Usa sua imagem local do Desplugado
      return const AssetImage('assets/images/desplugado.png');
    } else if (title.contains('PrimoCast')) {
      // Preparado para primocast.png quando você adicionar
      return const AssetImage('assets/images/podcast1.png');
    } else if (title.contains('Jota')) {
      // Preparado para jota.png quando você adicionar
      return const AssetImage('assets/images/podcast2.png');
    } else if (title.contains('Sócios')) {
      // Preparado para socios.png quando você adicionar
      return const AssetImage('assets/images/podcast3.png');
    } else if (title.contains('Julia Wolf') || title.contains('Khalid') || title.contains('ayokay')) {
      // Playlist 1: Julia Wolf, Khalid, ayokay and more
      return const AssetImage('assets/images/playlist1.png');
    } else if (title.contains('Eminem') || title.contains('Arctic Monkeys') || title.contains('The Weeknd')) {
      // Playlist 3: Eminem, Arctic Monkeys and The Weeknd
      return const AssetImage('assets/images/playlist3.png');
    } else if (title.contains('Joywave') || title.contains('The xx') || title.contains('Neighbourhood')) {
      // Para playlists do Joniel - usar apenas 3 imagens diferentes
      if (title.contains('- 1')) {
        return const AssetImage('assets/images/playlist1.png');
      } else if (title.contains('- 2')) {
        return const AssetImage('assets/images/playlist2.png');
      } else if (title.contains('- 3')) {
        return const AssetImage('assets/images/playlist3.png');
      } else {
        return const AssetImage('assets/images/playlist1.png'); // fallback
      }
    } else if (title.contains('playlist')) {
      // Fallback para outras playlists
      return const AssetImage('assets/images/playlist1.png');
    } else {
      // Fallback para imagem online
      return const NetworkImage("https://picsum.photos/seed/default/147/147");
    }
  }
}