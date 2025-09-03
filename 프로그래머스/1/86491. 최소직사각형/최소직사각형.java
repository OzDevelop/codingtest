class Solution {
    public int solution(int[][] sizes) {
        int maxWidth =0;
        int maxHeight =0;
        
        for(int[] size: sizes) {
            int w =  size[0];
            int h = size[1];
            
            int bigger = Math.max(w, h);
            int smaller = Math.min(w, h);
            
            if(bigger > maxWidth) maxWidth = bigger;
            if (smaller > maxHeight) maxHeight = smaller;
        }
        
        return maxWidth * maxHeight ;
    }
}