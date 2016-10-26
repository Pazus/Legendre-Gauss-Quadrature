clear;
test_data = load('test_data');

%% Test default borders
disp('Test default borders');
[test1_x,test1_w]=legzo(150);

assert(max(abs(test1_x-test_data.test150.x1)./test_data.test150.x1)<1e-10);
assert(max(abs(test1_w-test_data.test150.w1)./test_data.test150.w1)<1e-10);


%% Test non-default borders
disp('Test non-default borders');
[test2_x,test2_w]=legzo(1500,-3,2);

assert(max(abs(test2_x-test_data.test150a_3b2.x1)./test_data.test150a_3b2.x1)<1e-10);
assert(max(abs(test2_w-test_data.test150a_3b2.w1)./test_data.test150a_3b2.w1)<1e-10);

disp('All tests passed');