#!/usr/bin/env perl

=head1 

made for my website, show uptime (in a different form)

=cut

use Unix::Uptime qw(:hires);
use Time::Piece;
use Time::Seconds;
use Time::HiRes;
use Time::Zone;
use CGI qw(:all);


my $TZ = 'Europe/Berlin';
my $uptime = Unix::Uptime->uptime_hires();
my $date = Time::HiRes::time();
my $dayup = Time::Piece->strptime(int($date - $uptime + tz_local_offset), '%s');
my $up = Time::Seconds->new(int($uptime));
my $q = CGI->new;

print $q->header(-type => 'text/html',-refresh => '0'),
      $q->start_html(-title => 'up and running'),
      $q->h1('This Pod\'s Uptime'), 
      "uptime: ", $up->pretty,
      $q->br,
      "running since: ", $dayup,
      $q->end_html;
