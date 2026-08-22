// ==========================================
// [사용자 설정 변수]
// ==========================================

// 1. 하단(Base) 사각형 크기
bottom_x = 30;
bottom_y = 45;

// 2. 상단(Top) 사각형 크기
top_x = 26;
top_y = 40;

// 3. 전체 높이 및 상단 위치
total_height = 25; // linear_extrude(1)을 고려한 총 높이 (30 + 1)

// 4. 빼낼 부분 (HDD) 너비
hdd_width = 22;
hdd_margin = 0.2; // 여유 공차


// ==========================================
// [모델링 연산]
// ==========================================

// 실제 연산에 사용될 HDD 총 너비
hdd = hdd_width + hdd_margin; 

difference() {
    // 겉 모양 생성 (Hull 연산)
    translate([-bottom_x/2, 0, 0]) hull() {
        // 하단 사각형 (두께 1)
        linear_extrude(1) 
            square([bottom_x, bottom_y]);
        
        // 상단 사각형 (지정된 높이로 이동, 두께 1)
        translate([(bottom_x - top_x)/2, (bottom_y - top_y)/2, total_height - 1]) 
            linear_extrude(1) 
            square([top_x, top_y]);
    }
    
    // 가운데 빼낼 부분 (Cube 컷아웃)
    translate([-hdd/2, -10, 5]) 
        cube([hdd, 200, 100]);
}

translate([-bottom_x/2, 0, 0]) 
linear_extrude(3) hull() {
    translate([bottom_x+10, bottom_y, 0]) circle(5);
    translate([bottom_x+10, 0, 0]) circle(5);
    translate([-10, bottom_y, 0]) circle(5);
    translate([-10, 0, 0]) circle(5);
}