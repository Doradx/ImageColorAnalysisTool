# Image Color Analysis Tool

An image tool for color clustering based on K-means.  [![View ImageColorAnalysisTool on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/75116-image-color-analysis-tool)

![Main Page](https://raw.githubusercontent.com/Doradx/ImageColorAnalysisTool/master/images/main-page.png)

# Usage

## Download

You can get the last version from [Release page](https://github.com/Doradx/ImageColorAnalysisTool/releases).

## Install

Double click on `Image Color Analysis Tool.mlappinstall` to install the application, and you can find it in `Matlab>App`.

![Image Color Analysis Tool](https://raw.githubusercontent.com/Doradx/ImageColorAnalysisTool/master/images/icon.png)

## Run

### 1. Open image

Click`File>Open` to select a image.

### 2. Set color number

Click `Analysis>Set Cluster Number` to set cluster number for k-means clustering.

### 3. Analysis

Click `Analysis>Run` to start analysis the color distribution.

### 4. Result View

There are three panes:

- `Origin`: the image you import.
- `Cluster`: the image after k-means clustering.
- `Color Hist`: the histogram of main colors in image.

You can adjust `Cluster Number` by comparing the image between `Origin` and `Cluster`. 

![Cluster](https://raw.githubusercontent.com/Doradx/ImageColorAnalysisTool/master/images/cluster-image.png)

Also, the color number in `Color Histogram` can be adjust by the `slider`. 

![Color Histogram](https://raw.githubusercontent.com/Doradx/ImageColorAnalysisTool/master/images/color-histogram.png)

### 5. Others

Other features:

- `File>Save>Cluster Image`: Export the cluster image.
- `File>Save>Color Hist Image`: Export the figure of color histogram.



# Source Code

[Github](<https://github.com/Doradx/ImageColorAnalysisTool>)

# Author

[Dorad](https://blog.cuger.cn), cug.xia@gmail.com
