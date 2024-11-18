db.getCollection('users').aggregate(
  [
    {
      $lookup: {
        from: 'orders',
        localField: 'user_id',
        foreignField: 'buyer_id',
        as: 'buyer_orders'
      }
    },
    {
      $unwind: {
        path: '$buyer_orders',
        preserveNullAndEmptyArrays: true
      }
    },
    {
      $lookup: {
        from: 'product',
        localField: 'buyer_orders.order_id',
        foreignField: 'product_id',
        as: 'order_products'
      }
    },
    {
      $unwind: {
        path: '$order_products',
        preserveNullAndEmptyArrays: true
      }
    },
    {
      $project: {
        _id: 1,
        user_info: {
          user_id: '$user_id',
          user_name: '$user_name',
          user_email: '$user_email',
          user_tel: '$user_tel'
        },
        total_order: {
          order_id: '$buyer_orders.order_id',
          product_name:
            '$order_products.product_name',
          order_status:
            '$buyer_orders.order_status'
        }
      }
    },
    {
      $group: {
        _id: '$user_info',
        total_orders: { $push: '$total_order' }
      }
    },
    {
      $project: {
        total_orders: 1,
        user_info: '$_id',
        _id: 0
      }
    }
  ]
);
