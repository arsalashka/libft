/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: maearly <maearly@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/29 13:24:28 by maearly           #+#    #+#             */
/*   Updated: 2020/10/30 19:29:43 by maearly          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	char	*buf;
	int		i;

	buf = (char *)malloc(ft_strlen(s1) * sizeof(char) + 1);
	if (NULL == buf)
		return (NULL);
	i = 0;
	while (i < (int)ft_strlen(s1))
	{
		buf[i] = s1[i];
		i++;
	}
	buf[i] = '\0';
	return (buf);
}
