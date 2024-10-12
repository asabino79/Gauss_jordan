function indicator = check_zero(matrix)
  #This function checks whether at least one entry of the matrix is zero.
  #
  #-- INDICATOR = check_zero(MATRIX)
  #
  #    ========== Input arguments ============
  #     * MATRIX represents the input matrix.
  #
  #    ========== Output arguments ============
  #     * INDICATOR is a boolean that indicates whether the matrix has any null entry.
  #       If INDICATOR = 0 then the matrix has not null entries.
  #       If INDICATOR = 1 then the matrix has at least one null entry.

  # AJS 2024 Ver 1.0

  #Checking whether the input parameter is a matrix
  if ismatrix(matrix)==0
    error('The input parameter must be a numeric matrix')
  endif

  #Checking whether at least one entry is zero
  dimension = size(matrix);
  indicator = 0;
  for j = 1:dimension(2)
    for j = 1:dimension(1)
      if matrix(i,j)==0
        indicator = 1;
      endif
    endfor
  endfor
endfunction
