<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
  <h1>Videostreaming in 5G Networks</h1>
  <p>
    This repository contains MATLAB scripts and data files for analyzing video streaming in 5G networks. 
    The analysis focuses on statistical analysis of network throughput in video streaming scenarios for platforms such as Netflix and Amazon Prime, considering both static and driving conditions.
    Also it contains  MATLAB script for sintetic generation of throughput network traces.
  </p>

  <h2>Repository Structure</h2>

  <h3>MATLAB Scripts</h3>
  <ul>
    <li><strong>Script_5G_Poisson.m</strong>: The main script for analyzing 5G network throuhput using Poisson distribution methods.</li>
    <li><strong>Script_corelation.m</strong>: A script for analyzing the correlation between different segments of network trace.</li>
    <li><strong>Script_5G_sint_Poisson.m</strong>: A script for simulating and analyzing synthetic data using Poisson processes.</li>
    <li><strong>trace_sint5G_radni.m</strong>: A script for generating sintetic throughput network traces.</li>
    <li><strong>fitmethis.m</strong>: A utility script for fitting statistical models to the data.</li>
    <li><strong>plotfitdist.m</strong>: A script for visualizing the fitted distribution.</li>
  </ul>

  <h3>MATLAB Data Files</h3>
  <p>The <code>.mat</code> files contain the datasets used for analysis. They are categorized as follows:</p>

  <h4>Netflix Data</h4>
  <ul>
    <li><strong>Netflix_static.mat</strong>: Data for static streaming scenarios.</li>
    <li><strong>Netflix_static-names.mat</strong>: Metadata for the static data.</li>
    <li><strong>Netflix_driving.mat</strong>: Data for streaming scenarios while driving.</li>
    <li><strong>Netflix_driving-names.mat</strong>: Metadata for the driving data.</li>
  </ul>
  <h4>Amazon Prime Data</h4>
  <ul>
    <li><strong>Amazon_Prime_static.mat</strong>: Data for static streaming scenarios.</li>
    <li><strong>Amazon_Prime_static-names.mat</strong>: Metadata for the static data.</li>
    <li><strong>Amazon_Prime_driving.mat</strong>: Data for streaming scenarios while driving.</li>
    <li><strong>Amazon_Prime_driving-names.mat</strong>: Metadata for the driving data.</li>
  </ul>
  
  <h2>Getting Started</h2>

  <h3>Prerequisites</h3>
  <ul>
    <li>MATLAB and Git installed on your machine.</li>
  </ul>

  <h3>Usage</h3>
  <ol>
    <li>Clone this repository:
      <pre><code>git clone https://github.com/username/Videostreaming-in-5G-networks.git</code></pre>
    </li>
    <li>Open the desired <code>.m</code> script in MATLAB.</li>
    <li>Make sure you have all of the <code>.mat</code> files in the same folder as the desired MATLAB script</li>
    <li>Run the code.</li>
  </ol>
</body>
</html>
