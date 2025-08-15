# CNN Waste Classification: A Comparative Architectural Study

An end-to-end computer vision project to identify an optimal deep learning architecture for real-world waste classification, achieving **87.5% validation accuracy** through a rigorous process of model evaluation and hyperparameter optimization.

---

### Project Overview

This repository documents a comprehensive, end-to-end analysis for solving a practical computer vision problem: the automated sorting of municipal waste. The project moves beyond a single model to conduct a multi-stage investigation on the "RealWaste" dataset, a challenging collection of 9-class waste images.

The analysis is structured across a series of notebooks:
* `01-cnn-waste-classification-wrangling-eda.ipynb`
* `02-cnn-waste-classification-modeling.ipynb`
* `03-cnn-waste-classification-variability.ipynb`
* `04-cnn-waste-classification-learning-rate-optimized.ipynb`

### Key Findings & Results

* **Achieved 87.5% Final Validation Accuracy** with a fine-tuned **EfficientNet-B0** model, empirically identifying it as the optimal architecture for this use case.

* **Developed a High-Performing Custom CNN:** A custom-built CNN, developed from scratch, achieved an impressive **58.7% validation accuracy**, establishing a strong performance baseline and demonstrating the viability of non-transfer learning approaches.

* **Conducted a Deep Dive into Model Failure:** A key insight from this project was the identification of a common "model collapse" failure mode. A follow-on investigation proved this was a result of a sub-optimal default learning rate; tuning the learning rate through simple interpolation successfully turned previously "failed" architectures into reasonably viable models.

* **Provided a Complete, Reproducible Environment:** This entire project is containerized using Docker, with separate, optimized environments for both GPU and CPU execution to ensure 100% reproducibility.

### Tech Stack

* **Languages & Core Libraries:** Python | TensorFlow/Keras | Pandas | NumPy | Scikit-Learn
* **Development Environment:** Docker
* **Data Visualization:** Matplotlib | Seaborn

---

### Installation & Usage

This project is fully containerized and managed with shell scripts for a streamlined, reproducible workflow.

**Prerequisites:**
* Docker
* For GPU support, NVIDIA Container Toolkit

**Instructions:**

1.  Clone the repository:
    ```bash
    git clone [your-repo-url]
    cd [your-repo-name]
    ```

2.  Make the scripts executable:
    ```bash
    chmod +x build.sh run.sh
    ```

3.  **Build the Environment:**
    * **For a GPU-enabled environment (NVIDIA GPU required):**
        ```bash
        ./build.sh -g
        ```
    * **For a CPU-only environment:**
        ```bash
        ./build.sh -c
        ```

4.  **Run the Container:**
    * **To launch the GPU container:**
        ```bash
        ./run.sh -g
        ```
    * **To launch the CPU container:**
        ```bash
        ./run.sh -c
        ```

After running the container, navigate to `http://localhost:8888` in your web browser to access the Jupyter Lab environment.

---


**Data Source**

Data for this project are from the RealWaste dataset at the UC Irvine Machine Learning Repository: (https://archive.ics.uci.edu/dataset/908/realwaste)

Create a folder in your root project directory called data/ - unzip the RealWaste directory inside it.  RealWaste will contain subdirectories for each image category.  Notebooks are configured for this directory structure.

