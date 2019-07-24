create table om_administrator(
	`id` int not null auto_increment,
    `name` varchar(40) not null comment'用户',
    `password` varchar(100) not null comment'密码',
    `sex` enum('0', '1') default 1 comment'0 女 1 男',
    `role_id` int not null comment'角色id',
    `phone` varchar(15) default '' comment'联系方式',
    `status` tinyint not null default 1 comment'状态: 1 启用 2 禁用 ',
    `create_time` datetime default now() comment'创建时间',
    `update_time` datetime default now() comment'修改时间',
    primary key(`id`)
)engine=Innodb auto_increment=60 default charset=utf8 comment='管理员表';

create table om_role(
	`id` int not null auto_increment,
    `role_name` varchar(20) not null default'普通管理员' comment'角色名',
    `admin_ids` varchar(225) not null default 1 comment'管理员id， 多个用，连接',
    primary key(`id`)
)engine=Innodb auto_increment=60 default charset=utf8 comment='角色表';

create table om_auth(
	`id` int not null auto_increment,
    `func` varchar(225) not null comment'权限接口',
    `menu_id` varchar(225) not null comment'菜单列表',
    primary key(`id`)
)engine=Innodb default charset=utf8 comment='权限表';

create table om_menus(
	`id` int not null auto_increment,
    `name` varchar(20) not null default '系统管理' comment'菜单',
    `order` int null default '1' comment'排序',
    `p_id` int not null default '0' comment'父级菜单',
    `create_time` datetime default now() comment'创建时间',
    `update_time` datetime default now() comment'修改时间',
    primary key(`id`)
)engine=Innodb default charset=utf8 comment='菜单表';