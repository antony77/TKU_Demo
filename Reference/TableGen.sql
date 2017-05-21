USE TKU_Shopping

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('Member')
                  AND [o].[name] = 'FK_Member_Reference_Memberstatus'
         )
    BEGIN
        ALTER TABLE [Member] DROP CONSTRAINT [FK_Member_Reference_Memberstatus]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('MemberPushToken')
                  AND [o].[name] = 'FK_MemberPushToken_Reference_Member'
         )
    BEGIN
        ALTER TABLE [MemberPushToken] DROP CONSTRAINT [FK_MemberPushToken_Reference_Member]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('Order')
                  AND [o].[name] = 'FK_Order_Reference_OrderStatus'
         )
    BEGIN
        ALTER TABLE [Order] DROP CONSTRAINT [FK_Order_Reference_OrderStatus]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('Order')
                  AND [o].[name] = 'FK_Order_Reference_Member'
         )
    BEGIN
        ALTER TABLE [Order] DROP CONSTRAINT [FK_Order_Reference_Member]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('Order')
                  AND [o].[name] = 'FK_Order_Reference_Member'
         )
    BEGIN
        ALTER TABLE [Order] DROP CONSTRAINT [FK_Order_Reference_Member]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('OrderInfo')
                  AND [o].[name] = 'FK_OrderInfo_Reference_Order'
         )
    BEGIN
        ALTER TABLE [OrderInfo] DROP CONSTRAINT [FK_OrderInfo_Reference_Order]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('OrderInfo')
                  AND [o].[name] = 'FK_OrderInfo_Reference_Product'
         )
    BEGIN
        ALTER TABLE [OrderInfo] DROP CONSTRAINT [FK_OrderInfo_Reference_Product]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('ProdcutPhoto')
                  AND [o].[name] = 'FK_ProdcutPhoto_Reference_Product'
         )
    BEGIN
        ALTER TABLE [ProdcutPhoto] DROP CONSTRAINT [FK_ProdcutPhoto_Reference_Product]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('Product')
                  AND [o].[name] = 'FK_Product_Reference_ProductStatus'
         )
    BEGIN
        ALTER TABLE [Product] DROP CONSTRAINT [FK_Product_Reference_ProductStatus]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('Product')
                  AND [o].[name] = 'FK_Product_Reference_ProductCategory'
         )
    BEGIN
        ALTER TABLE [Product] DROP CONSTRAINT [FK_Product_Reference_ProductCategory]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('ProductCategory')
                  AND [o].[name] = 'FK_ProductCategory_Reference_ProductCategory'
         )
    BEGIN
        ALTER TABLE [ProductCategory] DROP CONSTRAINT [FK_ProductCategory_Reference_ProductCategory]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('ShoppingCart')
                  AND [o].[name] = 'FK_ShoppingCart_Reference_Member'
         )
    BEGIN
        ALTER TABLE [ShoppingCart] DROP CONSTRAINT [FK_ShoppingCart_Reference_Member]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[sysreferences] AS [r]
                JOIN [sys].[sysobjects] AS [o]
           ON
             (
                    [o].[id] = [r].[constid]
                    AND [o].[type] = 'F'
             )
           WHERE
                  [r].[fkeyid] = OBJECT_ID('ShoppingCart')
                  AND [o].[name] = 'FK_ShoppingCart_Reference_Product'
         )
    BEGIN
        ALTER TABLE [ShoppingCart] DROP CONSTRAINT [FK_ShoppingCart_Reference_Product]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('Member')
                  AND [name] = 'IX_FK_Member_Reference_Memberstatus'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [Member].[IX_FK_Member_Reference_Memberstatus]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('Member')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [Member]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('MemberPushToken')
                  AND [name] = 'IX_FK_MemberPushToken_Reference_Member'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [MemberPushToken].[IX_FK_MemberPushToken_Reference_Member]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('MemberPushToken')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [MemberPushToken]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('Memberstatus')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [Memberstatus]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('Order')
                  AND [name] = 'IX_FK_Order_Reference_OrderStatus'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [Order].[IX_FK_Order_Reference_OrderStatus]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('Order')
                  AND [name] = 'IX_FK_Order_Reference_Member2'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [Order].[IX_FK_Order_Reference_Member2]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('Order')
                  AND [name] = 'IX_FK_Order_Reference_Member'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [Order].[IX_FK_Order_Reference_Member]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('Order')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [Order]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('OrderInfo')
                  AND [name] = 'IX_FK_OrderInfo_Reference_Product'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [OrderInfo].[IX_FK_OrderInfo_Reference_Product]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('OrderInfo')
                  AND [name] = 'IX_FK_OrderInfo_Reference_Order'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [OrderInfo].[IX_FK_OrderInfo_Reference_Order]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('OrderInfo')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [OrderInfo]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('OrderStatus')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [OrderStatus]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('ProdcutPhoto')
                  AND [name] = 'IX_FK_ProdcutPhoto_Reference_Product'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [ProdcutPhoto].[IX_FK_ProdcutPhoto_Reference_Product]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('ProdcutPhoto')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [ProdcutPhoto]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('Product')
                  AND [name] = 'IX_FK_Product_Reference_ProductStatus'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [Product].[IX_FK_Product_Reference_ProductStatus]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('Product')
                  AND [name] = 'IX_FK_Product_Reference_ProductCategory'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [Product].[IX_FK_Product_Reference_ProductCategory]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('Product')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [Product]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('ProductCategory')
                  AND [name] = 'IX_FK_ProductCategory_Reference_ProductCategory'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [ProductCategory].[IX_FK_ProductCategory_Reference_ProductCategory]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('ProductCategory')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [ProductCategory]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('ProductStatus')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [ProductStatus]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('ShoppingCart')
                  AND [name] = 'IX_FK_ShoppingCart_Reference_Product'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [ShoppingCart].[IX_FK_ShoppingCart_Reference_Product]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysindexes]
           WHERE
                  [id] = OBJECT_ID('ShoppingCart')
                  AND [name] = 'IX_FK_ShoppingCart_Reference_Member'
                  AND [indid] > 0
                  AND [indid] < 255
         )
    BEGIN
        DROP INDEX [ShoppingCart].[IX_FK_ShoppingCart_Reference_Member]
    END;
GO

IF EXISTS
         ( SELECT 1
           FROM [sysobjects]
           WHERE
                  [id] = OBJECT_ID('ShoppingCart')
                  AND [type] = 'U'
         )
    BEGIN
        DROP TABLE [ShoppingCart]
    END;
GO

/*==============================================================*/

/* Table: Member                                                */

/*==============================================================*/

CREATE TABLE [Member]
                     ( 
             [ID]           BIGINT IDENTITY
            ,[CoverPhoto]   VARCHAR(255) NULL
            ,[AccountEmail] VARCHAR(255) NOT NULL
            ,[Password]     VARCHAR(255) NOT NULL
            ,[Name]         NVARCHAR(50) NOT NULL
            ,[Gender]       CHAR(1) NOT NULL
            ,[Phone]        VARCHAR(10) NULL
            ,[Birthday]     DATE NULL
            ,[NickName]     NVARCHAR(50) NULL
            ,[MemberStatus] TINYINT NOT NULL
            ,[MemberLevel]  TINYINT NOT NULL
            ,[AuthStatus]   TINYINT NOT NULL
            ,[CreatedDate]  DATETIME NOT NULL
                                     DEFAULT GETDATE()
            ,[UpdatedDate]  DATETIME NULL
            ,CONSTRAINT [PK_Member] PRIMARY KEY([ID])
                     );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CoverPhoto'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'CoverPhoto';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'大頭照'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'CoverPhoto';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'AccountEmail'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'AccountEmail';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'帳號信箱'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'AccountEmail';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Password'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'Password';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'密碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'Password';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Name'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'Name';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'姓名'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'Name';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Gender'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'Gender';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'性別'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'Gender';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Phone'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'Phone';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'手機'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'Phone';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Birthday'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'Birthday';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'生日'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'Birthday';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'NickName'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'NickName';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'暱稱'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'NickName';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'MemberStatus'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'MemberStatus';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'會員狀態'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'MemberStatus';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'MemberLevel'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'MemberLevel';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'會員等級'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'MemberLevel';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'AuthStatus'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'AuthStatus';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'驗證狀態'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'AuthStatus';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Member')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Member'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Member'
       ,'column'
       ,'UpdatedDate';
GO

/*==============================================================*/

/* Index: IX_FK_Member_Reference_Memberstatus                   */

/*==============================================================*/

CREATE INDEX [IX_FK_Member_Reference_Memberstatus] ON [Member]
                                                              ( [MemberStatus] ASC
                                                              );
GO

/*==============================================================*/

/* Table: MemberPushToken                                       */

/*==============================================================*/

CREATE TABLE [MemberPushToken]
                              ( 
             [ID]          BIGINT IDENTITY
            ,[PushToken]   VARCHAR(255) NULL
            ,[MemberID]    BIGINT NULL
            ,[DeviceType]  TINYINT NULL
            ,[CreatedDate] DATETIME NOT NULL
                                    DEFAULT GETDATE()
            ,[UpdatedDate] DATETIME NULL
            ,CONSTRAINT [PK_MemberPushToken] PRIMARY KEY([ID])
                              );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('MemberPushToken')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'MemberPushToken'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'MemberPushToken'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('MemberPushToken')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'PushToken'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'MemberPushToken'
               ,'column'
               ,'PushToken';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'推播金鑰'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'MemberPushToken'
       ,'column'
       ,'PushToken';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('MemberPushToken')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'MemberID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'MemberPushToken'
               ,'column'
               ,'MemberID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'會員ID'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'MemberPushToken'
       ,'column'
       ,'MemberID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('MemberPushToken')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'DeviceType'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'MemberPushToken'
               ,'column'
               ,'DeviceType';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'裝置作業系統類型'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'MemberPushToken'
       ,'column'
       ,'DeviceType';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('MemberPushToken')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'MemberPushToken'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'MemberPushToken'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('MemberPushToken')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'MemberPushToken'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'MemberPushToken'
       ,'column'
       ,'UpdatedDate';
GO

/*==============================================================*/

/* Index: IX_FK_MemberPushToken_Reference_Member                */

/*==============================================================*/

CREATE INDEX [IX_FK_MemberPushToken_Reference_Member] ON [MemberPushToken]
                                                                          ( [MemberID] ASC
                                                                          );
GO

/*==============================================================*/

/* Table: Memberstatus                                          */

/*==============================================================*/

CREATE TABLE [Memberstatus]
                           ( 
             [ID]          TINYINT IDENTITY
            ,[Status]      VARCHAR(50) NOT NULL
            ,[Description] NVARCHAR(50) NULL
            ,[CreatedDate] DATETIME NOT NULL
                                    DEFAULT GETDATE()
            ,[UpdatedDate] DATETIME NULL
            ,CONSTRAINT [PK_Memberstatus] PRIMARY KEY([ID])
                           );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Memberstatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Memberstatus'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Memberstatus'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Memberstatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Status'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Memberstatus'
               ,'column'
               ,'Status';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'會員狀態'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Memberstatus'
       ,'column'
       ,'Status';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Memberstatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Description'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Memberstatus'
               ,'column'
               ,'Description';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'描述'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Memberstatus'
       ,'column'
       ,'Description';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Memberstatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Memberstatus'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Memberstatus'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Memberstatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Memberstatus'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Memberstatus'
       ,'column'
       ,'UpdatedDate';
GO

/*==============================================================*/

/* Table: [Order]                                               */

/*==============================================================*/

CREATE TABLE [Order]
                    ( 
             [ID]              BIGINT NOT NULL
            ,[OrderNumber]     CHAR(15) NOT NULL
            ,[TotalCount]      INT NOT NULL
            ,[OrderStatus]     TINYINT NOT NULL
            ,[Buyer]           BIGINT NULL
            ,[Seller]          BIGINT NULL
            ,[PayCompleteDate] DATETIME NULL
            ,[CreatedDate]     DATETIME NOT NULL
                                        DEFAULT GETDATE()
            ,[UpdatedDate]     DATETIME NULL
            ,CONSTRAINT [PK_Order] PRIMARY KEY([ID])
                    );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Order')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Order'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Order'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Order')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'OrderNumber'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Order'
               ,'column'
               ,'OrderNumber';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'訂單號碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Order'
       ,'column'
       ,'OrderNumber';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Order')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'TotalCount'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Order'
               ,'column'
               ,'TotalCount';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'總金額'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Order'
       ,'column'
       ,'TotalCount';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Order')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'OrderStatus'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Order'
               ,'column'
               ,'OrderStatus';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'訂單狀態'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Order'
       ,'column'
       ,'OrderStatus';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Order')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Buyer'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Order'
               ,'column'
               ,'Buyer';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'買家'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Order'
       ,'column'
       ,'Buyer';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Order')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Seller'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Order'
               ,'column'
               ,'Seller';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'賣家'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Order'
       ,'column'
       ,'Seller';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Order')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'PayCompleteDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Order'
               ,'column'
               ,'PayCompleteDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'付款完成時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Order'
       ,'column'
       ,'PayCompleteDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Order')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Order'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Order'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Order')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Order'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Order'
       ,'column'
       ,'UpdatedDate';
GO

/*==============================================================*/

/* Index: IX_FK_Order_Reference_Member                          */

/*==============================================================*/

CREATE INDEX [IX_FK_Order_Reference_Member] ON [Order]
                                                      ( [Seller] ASC
                                                      );
GO

/*==============================================================*/

/* Index: IX_FK_Order_Reference_Member2                         */

/*==============================================================*/

CREATE INDEX [IX_FK_Order_Reference_Member2] ON [Order]
                                                       ( [Buyer] ASC
                                                       );
GO

/*==============================================================*/

/* Index: IX_FK_Order_Reference_OrderStatus                     */

/*==============================================================*/

CREATE INDEX [IX_FK_Order_Reference_OrderStatus] ON [Order]
                                                           ( [OrderStatus] ASC
                                                           );
GO

/*==============================================================*/

/* Table: OrderInfo                                             */

/*==============================================================*/

CREATE TABLE [OrderInfo]
                        ( 
             [ID]          BIGINT IDENTITY
            ,[OrderID]     BIGINT NOT NULL
            ,[ProductID]   BIGINT NOT NULL
            ,Count         INT NOT NULL
            ,[Price]       INT NOT NULL
            ,[CreatedDate] DATETIME NOT NULL
                                    DEFAULT GETDATE()
            ,[UpdatedDate] DATETIME NULL
            ,CONSTRAINT [PK_OrderInfo] PRIMARY KEY([ID])
                        );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderInfo')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderInfo'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderInfo'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderInfo')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'OrderID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderInfo'
               ,'column'
               ,'OrderID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'訂單識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderInfo'
       ,'column'
       ,'OrderID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderInfo')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ProductID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderInfo'
               ,'column'
               ,'ProductID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'商品識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderInfo'
       ,'column'
       ,'ProductID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderInfo')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Count'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderInfo'
               ,'column'
               ,'Count';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'數量'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderInfo'
       ,'column'
       ,'Count';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderInfo')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Price'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderInfo'
               ,'column'
               ,'Price';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'價格'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderInfo'
       ,'column'
       ,'Price';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderInfo')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderInfo'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderInfo'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderInfo')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderInfo'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderInfo'
       ,'column'
       ,'UpdatedDate';
GO

/*==============================================================*/

/* Index: IX_FK_OrderInfo_Reference_Order                       */

/*==============================================================*/

CREATE INDEX [IX_FK_OrderInfo_Reference_Order] ON [OrderInfo]
                                                             ( [OrderID] ASC
                                                             );
GO

/*==============================================================*/

/* Index: IX_FK_OrderInfo_Reference_Product                     */

/*==============================================================*/

CREATE INDEX [IX_FK_OrderInfo_Reference_Product] ON [OrderInfo]
                                                               ( [ProductID] ASC
                                                               );
GO

/*==============================================================*/

/* Table: OrderStatus                                           */

/*==============================================================*/

CREATE TABLE [OrderStatus]
                          ( 
             [ID]          TINYINT IDENTITY
            ,[OrderStatus] NVARCHAR(50) NOT NULL
            ,[Description] NVARCHAR(500) NULL
            ,[CreatedDate] DATETIME NOT NULL
                                    DEFAULT GETDATE()
            ,[UpdatedDate] DATETIME NULL
            ,CONSTRAINT [PK_OrderStatus] PRIMARY KEY([ID])
                          );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderStatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderStatus'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderStatus'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderStatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'OrderStatus'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderStatus'
               ,'column'
               ,'OrderStatus';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'訂單狀態'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderStatus'
       ,'column'
       ,'OrderStatus';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderStatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Description'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderStatus'
               ,'column'
               ,'Description';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'描述'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderStatus'
       ,'column'
       ,'Description';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderStatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderStatus'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderStatus'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('OrderStatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'OrderStatus'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'OrderStatus'
       ,'column'
       ,'UpdatedDate';
GO

/*==============================================================*/

/* Table: ProdcutPhoto                                          */

/*==============================================================*/

CREATE TABLE [ProdcutPhoto]
                           ( 
             [ID]          BIGINT NOT NULL
            ,[ProductID]   BIGINT NOT NULL
            ,[PhotoPath]   VARCHAR(255) NOT NULL
            ,[Description] NVARCHAR(500) NULL
            ,[CreatedDate] DATETIME NOT NULL
                                    DEFAULT GETDATE()
            ,[UpdatedDate] DATETIME NULL
            ,CONSTRAINT [PK_ProdcutPhoto] PRIMARY KEY([ID])
                           );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProdcutPhoto')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProdcutPhoto'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProdcutPhoto'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProdcutPhoto')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ProductID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProdcutPhoto'
               ,'column'
               ,'ProductID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'商品識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProdcutPhoto'
       ,'column'
       ,'ProductID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProdcutPhoto')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'PhotoPath'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProdcutPhoto'
               ,'column'
               ,'PhotoPath';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'圖片位置'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProdcutPhoto'
       ,'column'
       ,'PhotoPath';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProdcutPhoto')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Description'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProdcutPhoto'
               ,'column'
               ,'Description';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'描述'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProdcutPhoto'
       ,'column'
       ,'Description';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProdcutPhoto')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProdcutPhoto'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProdcutPhoto'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProdcutPhoto')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProdcutPhoto'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProdcutPhoto'
       ,'column'
       ,'UpdatedDate';
GO

/*==============================================================*/

/* Index: IX_FK_ProdcutPhoto_Reference_Product                  */

/*==============================================================*/

CREATE INDEX [IX_FK_ProdcutPhoto_Reference_Product] ON [ProdcutPhoto]
                                                                     ( [ProductID] ASC
                                                                     );
GO

/*==============================================================*/

/* Table: Product                                               */

/*==============================================================*/

CREATE TABLE [Product]
                      ( 
             [ID]                BIGINT NOT NULL
            ,[MemberID]          BIGINT NOT NULL
            ,[ProductCategoryID] BIGINT NOT NULL
            ,Count               INT NOT NULL
            ,[Price]             INT NOT NULL
            ,[Description]       NVARCHAR(2000) NULL
            ,[ProductState]      TINYINT NOT NULL
            ,[CreatedDate]       DATETIME NOT NULL
                                          DEFAULT GETDATE()
            ,[UpdatedDate]       DATETIME NULL
            ,CONSTRAINT [PK_Product] PRIMARY KEY([ID])
                      );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Product')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Product'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Product'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Product')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'MemberID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Product'
               ,'column'
               ,'MemberID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'會員識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Product'
       ,'column'
       ,'MemberID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Product')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ProductCategoryID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Product'
               ,'column'
               ,'ProductCategoryID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'商品分類識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Product'
       ,'column'
       ,'ProductCategoryID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Product')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Count'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Product'
               ,'column'
               ,'Count';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'庫存'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Product'
       ,'column'
       ,'Count';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Product')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Price'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Product'
               ,'column'
               ,'Price';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'價格'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Product'
       ,'column'
       ,'Price';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Product')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Description'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Product'
               ,'column'
               ,'Description';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'描述'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Product'
       ,'column'
       ,'Description';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Product')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ProductState'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Product'
               ,'column'
               ,'ProductState';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'商品狀態'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Product'
       ,'column'
       ,'ProductState';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Product')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Product'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Product'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('Product')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'Product'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'Product'
       ,'column'
       ,'UpdatedDate';
GO

/*==============================================================*/

/* Index: IX_FK_Product_Reference_ProductCategory               */

/*==============================================================*/

CREATE INDEX [IX_FK_Product_Reference_ProductCategory] ON [Product]
                                                                   ( [ProductCategoryID] ASC
                                                                   );
GO

/*==============================================================*/

/* Index: IX_FK_Product_Reference_ProductStatus                 */

/*==============================================================*/

CREATE INDEX [IX_FK_Product_Reference_ProductStatus] ON [Product]
                                                                 ( [ProductState] ASC
                                                                 );
GO

/*==============================================================*/

/* Table: ProductCategory                                       */

/*==============================================================*/

CREATE TABLE [ProductCategory]
                              ( 
             [ID]          BIGINT IDENTITY
            ,[Title]       NVARCHAR(50) NOT NULL
            ,[Descrition]  NVARCHAR(500) NULL
            ,[CreatedDate] DATETIME NOT NULL
                                    DEFAULT GETDATE()
            ,[UpdatedDate] DATETIME NULL
            ,[ParentID]    BIGINT NULL
            ,Sequence      BIGINT NOT NULL
                                  DEFAULT 0
            ,[IsDefault]   BIT NOT NULL
                               DEFAULT 0
            ,CONSTRAINT [PK_ProductCategory] PRIMARY KEY([ID])
                              );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductCategory')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductCategory'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductCategory'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductCategory')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Title'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductCategory'
               ,'column'
               ,'Title';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'標題'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductCategory'
       ,'column'
       ,'Title';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductCategory')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Descrition'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductCategory'
               ,'column'
               ,'Descrition';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'描述'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductCategory'
       ,'column'
       ,'Descrition';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductCategory')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductCategory'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductCategory'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductCategory')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductCategory'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductCategory'
       ,'column'
       ,'UpdatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductCategory')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ParentID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductCategory'
               ,'column'
               ,'ParentID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'母分類'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductCategory'
       ,'column'
       ,'ParentID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductCategory')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Sequence'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductCategory'
               ,'column'
               ,'Sequence';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'順序'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductCategory'
       ,'column'
       ,'Sequence';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductCategory')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'IsDefault'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductCategory'
               ,'column'
               ,'IsDefault';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'是否為封面'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductCategory'
       ,'column'
       ,'IsDefault';
GO

/*==============================================================*/

/* Index: IX_FK_ProductCategory_Reference_ProductCategory       */

/*==============================================================*/

CREATE INDEX [IX_FK_ProductCategory_Reference_ProductCategory] ON [ProductCategory]
                                                                                   ( [ParentID] ASC
                                                                                   );
GO

/*==============================================================*/

/* Table: ProductStatus                                         */

/*==============================================================*/

CREATE TABLE [ProductStatus]
                            ( 
             [ID]            TINYINT IDENTITY
            ,[ProductStatus] NVARCHAR(50) NOT NULL
            ,[Description]   NVARCHAR(500) NULL
            ,[CreatedDate]   DATETIME NOT NULL
                                      DEFAULT GETDATE()
            ,[UpdatedDate]   DATETIME NULL
            ,CONSTRAINT [PK_ProductStatus] PRIMARY KEY([ID])
                            );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductStatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductStatus'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductStatus'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductStatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ProductStatus'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductStatus'
               ,'column'
               ,'ProductStatus';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'商品狀態'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductStatus'
       ,'column'
       ,'ProductStatus';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductStatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Description'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductStatus'
               ,'column'
               ,'Description';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'描述'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductStatus'
       ,'column'
       ,'Description';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductStatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductStatus'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductStatus'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ProductStatus')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ProductStatus'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ProductStatus'
       ,'column'
       ,'UpdatedDate';
GO

/*==============================================================*/

/* Table: ShoppingCart                                          */

/*==============================================================*/

CREATE TABLE [ShoppingCart]
                           ( 
             [ID]          BIGINT IDENTITY
            ,[MemberID]    BIGINT NOT NULL
            ,[ProductID]   BIGINT NOT NULL
            ,Count         INT NOT NULL
            ,[Price]       INT NOT NULL
            ,[CreatedDate] DATETIME NOT NULL
                                    DEFAULT GETDATE()
            ,[UpdatedDate] DATETIME NULL
            ,CONSTRAINT [PK_ShoppingCart] PRIMARY KEY([ID])
                           );
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ShoppingCart')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ShoppingCart'
               ,'column'
               ,'ID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ShoppingCart'
       ,'column'
       ,'ID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ShoppingCart')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'MemberID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ShoppingCart'
               ,'column'
               ,'MemberID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'會員識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ShoppingCart'
       ,'column'
       ,'MemberID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ShoppingCart')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'ProductID'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ShoppingCart'
               ,'column'
               ,'ProductID';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'商品識別碼'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ShoppingCart'
       ,'column'
       ,'ProductID';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ShoppingCart')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Count'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ShoppingCart'
               ,'column'
               ,'Count';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'數量'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ShoppingCart'
       ,'column'
       ,'Count';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ShoppingCart')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'Price'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ShoppingCart'
               ,'column'
               ,'Price';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'價格'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ShoppingCart'
       ,'column'
       ,'Price';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ShoppingCart')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'CreatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ShoppingCart'
               ,'column'
               ,'CreatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'建立時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ShoppingCart'
       ,'column'
       ,'CreatedDate';
GO

IF EXISTS
         ( SELECT 1
           FROM [sys].[extended_properties] AS [p]
           WHERE
                  [p].[major_id] = OBJECT_ID('ShoppingCart')
                  AND [p].[minor_id] =
                                       ( SELECT [c].[column_id]
                                         FROM [sys].[columns] AS [c]
                                         WHERE
                                                [c].object_id = [p].[major_id]
                                                AND [c].[name] = 'UpdatedDate'
                                       )
         )
    BEGIN
        DECLARE @CurrentUser SYSNAME;
        SELECT @CurrentUser = USER_NAME();
        EXECUTE [sp_dropextendedproperty] 
                'MS_Description'
               ,'schema'
               ,'dbo'
               ,'table'
               ,'ShoppingCart'
               ,'column'
               ,'UpdatedDate';

    END;


SELECT @CurrentUser = USER_NAME();
EXECUTE [sp_addextendedproperty] 
        'MS_Description'
       ,N'更新時間'
       ,'schema'
       ,'dbo'
       ,'table'
       ,'ShoppingCart'
       ,'column'
       ,'UpdatedDate';
GO

/*==============================================================*/

/* Index: IX_FK_ShoppingCart_Reference_Member                   */

/*==============================================================*/

CREATE INDEX [IX_FK_ShoppingCart_Reference_Member] ON [ShoppingCart]
                                                                    ( [MemberID] ASC
                                                                    );
GO

/*==============================================================*/

/* Index: IX_FK_ShoppingCart_Reference_Product                  */

/*==============================================================*/

CREATE INDEX [IX_FK_ShoppingCart_Reference_Product] ON [ShoppingCart]
                                                                     ( [ProductID] ASC
                                                                     );
GO

ALTER TABLE [Member]
ADD CONSTRAINT [FK_Member_Reference_Memberstatus] FOREIGN KEY([MemberStatus]) REFERENCES [Memberstatus]([ID]);
GO

ALTER TABLE [MemberPushToken]
ADD CONSTRAINT [FK_MemberPushToken_Reference_Member] FOREIGN KEY([MemberID]) REFERENCES [Member]([ID]);
GO

ALTER TABLE [Order]
ADD CONSTRAINT [FK_Order_Reference_OrderStatus] FOREIGN KEY([OrderStatus]) REFERENCES [OrderStatus]([ID]);
GO

ALTER TABLE [Order]
ADD CONSTRAINT [FK_Order_Reference_MemberSeller] FOREIGN KEY([Seller]) REFERENCES [Member]([ID]);
GO

ALTER TABLE [Order]
ADD CONSTRAINT [FK_Order_Reference_MemberBuyer] FOREIGN KEY([Buyer]) REFERENCES [Member]([ID]);
GO

ALTER TABLE [OrderInfo]
ADD CONSTRAINT [FK_OrderInfo_Reference_Order] FOREIGN KEY([OrderID]) REFERENCES [Order]([ID]);
GO

ALTER TABLE [OrderInfo]
ADD CONSTRAINT [FK_OrderInfo_Reference_Product] FOREIGN KEY([ProductID]) REFERENCES [Product]([ID]);
GO

ALTER TABLE [ProdcutPhoto]
ADD CONSTRAINT [FK_ProdcutPhoto_Reference_Product] FOREIGN KEY([ProductID]) REFERENCES [Product]([ID]);
GO

ALTER TABLE [Product]
ADD CONSTRAINT [FK_Product_Reference_ProductStatus] FOREIGN KEY([ProductState]) REFERENCES [ProductStatus]([ID]);
GO

ALTER TABLE [Product]
ADD CONSTRAINT [FK_Product_Reference_ProductCategory] FOREIGN KEY([ProductCategoryID]) REFERENCES [ProductCategory]([ID]);
GO

ALTER TABLE [ProductCategory]
ADD CONSTRAINT [FK_ProductCategory_Reference_ProductCategory] FOREIGN KEY([ParentID]) REFERENCES [ProductCategory]([ID]);
GO

ALTER TABLE [ShoppingCart]
ADD CONSTRAINT [FK_ShoppingCart_Reference_Member] FOREIGN KEY([MemberID]) REFERENCES [Member]([ID]);
GO

ALTER TABLE [ShoppingCart]
ADD CONSTRAINT [FK_ShoppingCart_Reference_Product] FOREIGN KEY([ProductID]) REFERENCES [Product]([ID]);
GO