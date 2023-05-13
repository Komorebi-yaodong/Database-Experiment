-- 创建profile
create profile test_profile limit
-- 限制用户密码的复杂度
password_verify_function ora12c_verify_function
-- 指定同一密码所允许使用的天数。
password_life_time 60
-- 指定宽限天数，数据库发出警告到登陆失效前的天数。
password_grace_time 10
-- 指定在帐户被锁定之前所允许尝试登陆的的最大次数。
failed_login_attempts 3
-- 指定登陆尝试失败次数到达后帐户的缩定时间，以天为单位。
password_lock_time 1
-- 指定会话允许连续不活动的总的时间，以分钟为单位，超过该时间，会话将断开。
idle_time 10;

-- 将配置文件分配给用户
alter user User1 profile test_profile;