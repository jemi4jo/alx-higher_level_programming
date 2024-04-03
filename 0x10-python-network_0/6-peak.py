def find_peak(list_of_integers):
    """Finds a peak in a list of unsorted integers.

    Args:
        list_of_integers: A list of unsorted integers.

    Returns:
        The index of a peak in the list, or None if the list is empty or
        has a single element.
    """

    if len(list_of_integers) < 2:
        return None  # Empty or single-element list has no peak

    low = 0
    high = len(list_of_integers) - 1

    while low <= high:
        mid = (low + high) // 2

        if mid == 0 or list_of_integers[mid] >= list_of_integers[mid - 1]:
            if mid == len(list_of_integers) - 1 or list_of_integers[mid] >= list_of_integers[mid + 1]:
                return mid  # Found a peak
            else:
                low = mid + 1  # Search in the right subarray
        else:
            high = mid - 1  # Search in the left subarray

    return None  # No peak found (should not reach this point)
