impl Solution {
    pub fn find_smallest_set_of_vertices(n: i32, edges: Vec<Vec<i32>>) -> Vec<i32> {
        let n_usize = n as usize;
        let mut has_incoming_edge = vec![false; n_usize];
        
        for edge in edges.iter() {
            let dest = edge[1] as usize;
            has_incoming_edge[dest] = true;
        }
        (0..n).filter(|&i| !has_incoming_edge[i as usize]).collect()
    }
}
