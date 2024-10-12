function output_matrix = interchange_rows(input_matrix,row1,row2)
  #This function interchanges two different rows in a matrix
  #
  #-- OUTPUT_MATRIX = interchange_rows(INPUT_MATRIX,ROW1,ROW2)
  #
  #    ========== Input arguments ============
  #     * INPUT_MATRIX represents the input matrix.
  #     * ROW1, ROW2 are rows of the matrix.
  #
  #    ========== Output arguments ============
  #     * OUTPUT_MATRIX is the final matrix.

  # AJS 2024 Ver 1.0

  #Checking the input parameters
  if ismatrix(input_matrix)==0
    error('the input argument must be a numeric matrix')
  endif
  dimension = size(input_matrix);
  if (row1<1)||(row2<1)
    error('Second and third parameter must be positive')
  endif
  if (row1!=floor(row1))||(row2!=floor(row2))
    error('Second and third parameter must be integers')
  endif
  if (row1>dimension(1))||(row2>dimension(1))
    error('Second and third parameters cannot be larger than the number of rows')
  endif
  if row1==row2
    error('Second and third parameters must be different')
  endif

  #Interchanging the rows of the matrix
  output_matrix = input_matrix;
  output_matrix(row1,:) = input_matrix(row2,:);
  output_matrix(row2,:) = input_matrix(row1,:);
endfunction
