import 'package:flutter/material.dart';
import 'package:market_reach/core/constants/app_colors.dart';
import 'package:market_reach/features/featureCard.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: const Text(
          'MarketReach',
          style: TextStyle(
            color: AppColors.primaryTeal,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          _navItem('Features'),
          _navItem('Solutions'),
          _navItem('Pricing'),
          _navItem('Contact'),
          const SizedBox(width: 24),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _heroSection(),
            _featuresSection(),
            _ctaSection(),
          ],
        ),
      ),
    );
  }

  Widget _navItem(String label) {
  return TextButton(
    onPressed: () {},
    child: Text(
      label,
      style: const TextStyle(color: AppColors.textMuted),
    ),
  );
}
  }

  Widget _heroSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 80),
      color: AppColors.surface,
      child: Column(
        children: [
          const Text(
            'Expand Your Market.\nMultiply Your Reach.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
          const SizedBox(height: 24),
          const SizedBox(
            width: 640,
            child: Text(
              'MarketReach helps businesses discover opportunities, target the right audience, and scale growth using data-driven insights.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.textMuted,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 16,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryTeal,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                onPressed: () {},
                child: const Text(
                  'Start Free Trial',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: AppColors.primaryTeal),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                onPressed: () {},
                child: const Text(
                  'Request Demo',
                  style: TextStyle(color: AppColors.primaryTeal),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _featuresSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 72),
      child: Column(
        children: [
          const Text(
            'Smarter Reach Starts Here',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
          const SizedBox(height: 48),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children:  [
              FeatureCard(
                icon: Icons.analytics_outlined,
                title: 'Market Intelligence',
                description:
                    'Understand demand, trends, and competition instantly.',
              ),
              FeatureCard(
                icon: Icons.track_changes_outlined,
                title: 'Precision Targeting',
                description:
                    'Reach the right customers with accurate segmentation.',
              ),
              FeatureCard(
                icon: Icons.insights_outlined,
                title: 'Performance Insights',
                description:
                    'Track reach, engagement, and ROI in real time.',
              ),
              FeatureCard(
                icon: Icons.hub_outlined,
                title: 'Multi-Channel Reach',
                description:
                    'Email, ads, and partnerships from one platform.',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ctaSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 72),
      color: AppColors.navyCore,
      child: Column(
        children: [
          const Text(
            'Ready to grow with confidence?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryTeal,
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
            ),
            onPressed: () {},
            child: const Text(
              'Get Started Today',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

