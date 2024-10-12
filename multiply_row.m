function output_matrix = multiply_row(input_matrix,row_matrix,number)
  #This function multiplies a row by a number different from 0.
  #
  #-- OUTPUT_MATRIX = multiply_row(INPUT_MATRIX,ROW_MATRIX,NUMBER)
  #
  #    ========== Input arguments ============
  #     * INPUT_MATRIX represents the input matrix.
  #     * ROW_MATRIX represents a row of the input matrix.
  #     * NUMBER represents a number different from zero.
  #
  #    ========== Output arguments ============
  #     * OUTPUT_MATRIX is the final matrix.

  # AJS 2024 Ver 1.0

  #Checking the input parameters
  if ismatrix(input_matrix)==0
    error('the input argument must be a numeric matrix')
  endif
  dimension = size(input_matrix);
  if row_matrix>dimension(1)
    error('Second parameter cannot be larger than the number of rows')
  endif
  if number==0
    error('Third parameter cannot be equal to zero')
  endif

  #Multiplying the row by the number
  output_matrix = input_matrix;
  output_matrix(row_matrix,:) = number*output_matrix(row_matrix,:);
endfunction
