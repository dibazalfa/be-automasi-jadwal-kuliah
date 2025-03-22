const jwt = require('jsonwebtoken');
const JWT_SECRET = process.env.JWT_SECRET;

const auth = (req, res, next) => {
    const token = req.header('Authorization');
    if (!token) return res.status(401).json({ error: 'No token, authorization denied' });

    try {
        const [type, jwtToken] = token.split(' ');

        if (type !== 'Bearer') {
            return res.status(401).json({ error: 'Invalid token type' });
        }

        const decoded = jwt.verify(jwtToken, JWT_SECRET);

        req.user = decoded;
        next();
    } catch (err) {
        res.status(401).json({ error: 'Access token is not valid' });
    }
};

module.exports = { auth };
