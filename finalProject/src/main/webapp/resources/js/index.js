const express = require('express');
const app = express();

// memberController 가져오기
const memberController = require('./controllers/memberController');

// '/your-server-endpoint' 라우트에 memberController 적용
app.use('/your-server-endpoint', memberController);

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});

// 실제 모델이나 데이터베이스와 상호 작용하는 로직 작성
const MemberService = {
    getMembers: async () => {
        // 예시: 데이터베이스에서 회원 목록을 가져오는 로직
        const members = await /* ... */;

        return members;
    },
};

module.exports = MemberService;

const express = require('express');
const router = express.Router();

// 모델이나 서비스 로직을 가져오기
const MemberService = require('../services/memberService');

// '/your-server-endpoint' 라우트 핸들러
router.get('/', async (req, res) => {
    try {
        // 클라이언트에게 응답할 데이터를 생성하거나 DB에서 가져오는 로직을 작성
        const responseData = await MemberService.getMembers();

        res.json(responseData);
    } catch (error) {
        console.error('Error fetching member data:', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});

module.exports = router;