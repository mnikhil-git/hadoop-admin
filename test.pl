#!/bin/perl

use Hadoop::Admin; 
use Data::Dumper qw (Dumper);

    my $cluster=Hadoop::Admin->new({
      'namenode'          => 'namenode.mycompany.com',
      'jobtracker'        => 'jobtracker.mycompany.com',
    });

#    print Dumper($cluster);

    print "$_ \n" foreach  $cluster->datanode_live_list();
    print $cluster->{'NameNodeInfo_LiveNodes'}->{'gridnode.mycompany.com'}->{'usedSpace'};
