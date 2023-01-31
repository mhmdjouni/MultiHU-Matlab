%% Load Data

hsi, hsi_md = load_hsi(hsi_name_string);

%% Apply Filtering (morphology, patches, or none)

mf_hsi = augment_hsi(params);

%% Decompose

core, a, b, c = ao_admm(mf_hsi, rank, constraints, params);
