% Helmholtz and Laplace FMMs in R^2.
%
% Particle FMM routines.
%   hfmm2dpart      - Helmholtz particle FMM in R^2.
%   lfmm2dpart      - Laplace particle FMM in R^2 (complex).
%   rfmm2dpart      - Laplace particle FMM in R^2 (real).
%   zfmm2dpart      - Laplace particle FMM in R^2 (Cauchy sums).
%   cfmm2dpart      - Laplace particle FMM in R^2 (generalized Cauchy).
%
% Direct evaluation routines.
%   h2dpartdirect - Helmholtz particle interactions in R^2.
%   l2dpartdirect - Laplace particle interactions in R^2 (complex).
%   r2dpartdirect - Laplace particle interactions in R^2 (real).
%   z2dpartdirect - Laplace particle interactions in R^2 (Cauchy).
%   c2dpartdirect - Laplace particle interactions in R^2 (generalized Cauchy).
%
% Tree generation routines.
%   d2tstrcr - construct the logical structure for a fully adaptive FMM in R^2.
%   d2tstrcrem  - include empty boxes, min and max level restriction.
%   d2tgetb     - retrieve box information.
%   d2tgetl     - retrieve list information.
%
% Internal utility functions.
%   fmm2dprini   - initialize internal printing routines.
%
% Testing and debugging.
%   test_hfmm2dpart_direct - test Helmholtz particle FMM in R^2.
%   test_lfmm2dpart_direct - test Laplace particle FMM in R^2 (complex).
%   test_rfmm2dpart_direct - test Laplace particle FMM in R^2 (real).
%   test_zfmm2dpart_direct - test Laplace particle FMM in R^2 (Cauchy sums).
%   test_cfmm2dpart_direct - test Laplace particle FMM in R^2 (g. Cauchy sums).
%   test_sign_convention - test sign convention for Green's functions.
%   test_series - test series expansion for Helmholtz and Laplace potentials.
%   timings_fmm2dtree - timings for quad tree generator in R^2.
%   timings_lfmm2dpart - timings for Laplace particle FMM in R^2 (complex).
%   timings_rfmm2dpart - timings for Laplace particle FMM in R^2 (real).
%   timings_zfmm2dpart - timings for Laplace particle FMM in R^2 (Cauchy).
%   timings_cfmm2dpart - timings for Laplace particle FMM in R^2 (g. Cauchy).
%   timings_hfmm2dpart - timings for Helmholtz particle FMM in R^2.
%

%% Copyright (C) 2010-2012: Leslie Greengard and Zydrunas Gimbutas
%% Contact: greengard@cims.nyu.edu
%% 
%% This program is free software; you can redistribute it and/or modify 
%% it under the terms of the GNU General Public License as published by 
%% the Free Software Foundation; either version 2 of the License, or 
%% (at your option) any later version.  This program is distributed in 
%% the hope that it will be useful, but WITHOUT ANY WARRANTY; without 
%% even the implied warranty of MERCHANTABILITY or FITNESS FOR A 
%% PARTICULAR PURPOSE.  See the GNU General Public License for more 
%% details. You should have received a copy of the GNU General Public 
%% License along with this program; 
%% if not, see <http://www.gnu.org/licenses/>.
